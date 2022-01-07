
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key_serial_t ;
typedef int key_ref_t ;


 long EACCES ;
 scalar_t__ IS_ERR (int ) ;
 int KEY_SETATTR ;
 int KEY_WRITE ;
 long PTR_ERR (int ) ;
 int key_ref_put (int ) ;
 int key_ref_to_ptr (int ) ;
 int key_revoke (int ) ;
 int lookup_user_key (int ,int ,int ) ;

long keyctl_revoke_key(key_serial_t id)
{
 key_ref_t key_ref;
 long ret;

 key_ref = lookup_user_key(id, 0, KEY_WRITE);
 if (IS_ERR(key_ref)) {
  ret = PTR_ERR(key_ref);
  if (ret != -EACCES)
   goto error;
  key_ref = lookup_user_key(id, 0, KEY_SETATTR);
  if (IS_ERR(key_ref)) {
   ret = PTR_ERR(key_ref);
   goto error;
  }
 }

 key_revoke(key_ref_to_ptr(key_ref));
 ret = 0;

 key_ref_put(key_ref);
error:
 return ret;
}
