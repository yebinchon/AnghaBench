
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_key_auth {struct cred* cred; } ;
struct key_type {int dummy; } ;
struct cred {TYPE_2__* request_key_auth; } ;
typedef scalar_t__ key_ref_t ;
typedef int key_match_func_t ;
struct TYPE_3__ {struct request_key_auth* data; } ;
struct TYPE_4__ {int sem; TYPE_1__ payload; } ;


 int EACCES ;
 int ENOKEY ;
 scalar_t__ ERR_PTR (int ) ;
 int IS_ERR (scalar_t__) ;
 struct cred const* current_cred () ;
 int down_read (int *) ;
 struct key_type key_type_request_key_auth ;
 scalar_t__ key_validate (TYPE_2__*) ;
 int might_sleep () ;
 scalar_t__ search_my_process_keyrings (struct key_type*,void const*,int ,int,struct cred const*) ;
 int up_read (int *) ;

key_ref_t search_process_keyrings(struct key_type *type,
      const void *description,
      key_match_func_t match,
      const struct cred *cred)
{
 struct request_key_auth *rka;
 key_ref_t key_ref, ret = ERR_PTR(-EACCES), err;

 might_sleep();

 key_ref = search_my_process_keyrings(type, description, match,
          0, cred);
 if (!IS_ERR(key_ref))
  goto found;
 err = key_ref;





 if (cred->request_key_auth &&
     cred == current_cred() &&
     type != &key_type_request_key_auth
     ) {

  down_read(&cred->request_key_auth->sem);

  if (key_validate(cred->request_key_auth) == 0) {
   rka = cred->request_key_auth->payload.data;

   key_ref = search_process_keyrings(type, description,
         match, rka->cred);

   up_read(&cred->request_key_auth->sem);

   if (!IS_ERR(key_ref))
    goto found;

   ret = key_ref;
  } else {
   up_read(&cred->request_key_auth->sem);
  }
 }


 if (err == ERR_PTR(-ENOKEY) || ret == ERR_PTR(-ENOKEY))
  key_ref = ERR_PTR(-ENOKEY);
 else if (err == ERR_PTR(-EACCES))
  key_ref = ret;
 else
  key_ref = err;

found:
 return key_ref;
}
