
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int dummy; } ;
struct key {int dummy; } ;


 struct key* ERR_PTR (int) ;
 int IS_ERR (struct key*) ;
 int KEY_ALLOC_IN_QUOTA ;
 int key_put (struct key*) ;
 struct key* request_key_and_link (struct key_type*,char const*,void const*,size_t,void*,int *,int ) ;
 int wait_for_key_construction (struct key*,int) ;

struct key *request_key_with_auxdata(struct key_type *type,
         const char *description,
         const void *callout_info,
         size_t callout_len,
         void *aux)
{
 struct key *key;
 int ret;

 key = request_key_and_link(type, description, callout_info, callout_len,
       aux, ((void*)0), KEY_ALLOC_IN_QUOTA);
 if (!IS_ERR(key)) {
  ret = wait_for_key_construction(key, 0);
  if (ret < 0) {
   key_put(key);
   return ERR_PTR(ret);
  }
 }
 return key;
}
