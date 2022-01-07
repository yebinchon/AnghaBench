
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int match; int name; } ;
struct key {int dummy; } ;
struct cred {int dummy; } ;
typedef int key_ref_t ;


 int EAGAIN ;
 int ENOKEY ;
 struct key* ERR_CAST (int ) ;
 struct key* ERR_PTR (int ) ;
 int IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int construct_get_dest_keyring (struct key**) ;
 struct key* construct_key_and_link (struct key_type*,char const*,void const*,size_t,void*,struct key*,unsigned long) ;
 struct cred* current_cred () ;
 int kenter (char*,int ,char const*,void const*,size_t,void*,struct key*,unsigned long) ;
 int key_link (struct key*,struct key*) ;
 int key_put (struct key*) ;
 struct key* key_ref_to_ptr (int ) ;
 int kleave (char*,struct key*) ;
 int search_process_keyrings (struct key_type*,char const*,int ,struct cred const*) ;

struct key *request_key_and_link(struct key_type *type,
     const char *description,
     const void *callout_info,
     size_t callout_len,
     void *aux,
     struct key *dest_keyring,
     unsigned long flags)
{
 const struct cred *cred = current_cred();
 struct key *key;
 key_ref_t key_ref;

 kenter("%s,%s,%p,%zu,%p,%p,%lx",
        type->name, description, callout_info, callout_len, aux,
        dest_keyring, flags);


 key_ref = search_process_keyrings(type, description, type->match, cred);

 if (!IS_ERR(key_ref)) {
  key = key_ref_to_ptr(key_ref);
  if (dest_keyring) {
   construct_get_dest_keyring(&dest_keyring);
   key_link(dest_keyring, key);
   key_put(dest_keyring);
  }
 } else if (PTR_ERR(key_ref) != -EAGAIN) {
  key = ERR_CAST(key_ref);
 } else {


  key = ERR_PTR(-ENOKEY);
  if (!callout_info)
   goto error;

  key = construct_key_and_link(type, description, callout_info,
          callout_len, aux, dest_keyring,
          flags);
 }

error:
 kleave(" = %p", key);
 return key;
}
