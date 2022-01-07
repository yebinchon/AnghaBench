
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int flags; } ;
struct cred {int dummy; } ;
typedef scalar_t__ key_serial_t ;
typedef int key_ref_t ;


 int EAGAIN ;
 int EKEYREVOKED ;
 int ENOKEY ;
 struct key* ERR_CAST (int ) ;
 struct key* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int KEY_FLAG_REVOKED ;
 struct cred* current_cred () ;
 int key_get_instantiation_authkey_match ;
 int key_put (struct key*) ;
 struct key* key_ref_to_ptr (int ) ;
 int key_type_request_key_auth ;
 int search_process_keyrings (int *,void*,int ,struct cred const*) ;
 scalar_t__ test_bit (int ,int *) ;

struct key *key_get_instantiation_authkey(key_serial_t target_id)
{
 const struct cred *cred = current_cred();
 struct key *authkey;
 key_ref_t authkey_ref;

 authkey_ref = search_process_keyrings(
  &key_type_request_key_auth,
  (void *) (unsigned long) target_id,
  key_get_instantiation_authkey_match,
  cred);

 if (IS_ERR(authkey_ref)) {
  authkey = ERR_CAST(authkey_ref);
  if (authkey == ERR_PTR(-EAGAIN))
   authkey = ERR_PTR(-ENOKEY);
  goto error;
 }

 authkey = key_ref_to_ptr(authkey_ref);
 if (test_bit(KEY_FLAG_REVOKED, &authkey->flags)) {
  key_put(authkey);
  authkey = ERR_PTR(-EKEYREVOKED);
 }

error:
 return authkey;
}
