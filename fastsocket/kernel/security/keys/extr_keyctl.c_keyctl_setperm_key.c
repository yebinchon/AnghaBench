
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {scalar_t__ uid; int perm; int sem; } ;
typedef int key_serial_t ;
typedef int key_ref_t ;
typedef int key_perm_t ;


 int CAP_SYS_ADMIN ;
 long EACCES ;
 long EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int KEY_GRP_ALL ;
 int KEY_LOOKUP_CREATE ;
 int KEY_LOOKUP_PARTIAL ;
 int KEY_OTH_ALL ;
 int KEY_POS_ALL ;
 int KEY_SETATTR ;
 int KEY_USR_ALL ;
 long PTR_ERR (int ) ;
 scalar_t__ capable (int ) ;
 scalar_t__ current_fsuid () ;
 int down_write (int *) ;
 int key_put (struct key*) ;
 struct key* key_ref_to_ptr (int ) ;
 int lookup_user_key (int ,int,int ) ;
 int up_write (int *) ;

long keyctl_setperm_key(key_serial_t id, key_perm_t perm)
{
 struct key *key;
 key_ref_t key_ref;
 long ret;

 ret = -EINVAL;
 if (perm & ~(KEY_POS_ALL | KEY_USR_ALL | KEY_GRP_ALL | KEY_OTH_ALL))
  goto error;

 key_ref = lookup_user_key(id, KEY_LOOKUP_CREATE | KEY_LOOKUP_PARTIAL,
      KEY_SETATTR);
 if (IS_ERR(key_ref)) {
  ret = PTR_ERR(key_ref);
  goto error;
 }

 key = key_ref_to_ptr(key_ref);


 ret = -EACCES;
 down_write(&key->sem);


 if (capable(CAP_SYS_ADMIN) || key->uid == current_fsuid()) {
  key->perm = perm;
  ret = 0;
 }

 up_write(&key->sem);
 key_put(key);
error:
 return ret;
}
