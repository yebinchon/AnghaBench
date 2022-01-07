
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int time_t ;
struct timespec {unsigned int tv_sec; } ;
struct key {unsigned int expiry; int sem; } ;
typedef int key_serial_t ;
typedef struct key* key_ref_t ;


 long EACCES ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_LOOKUP_CREATE ;
 int KEY_LOOKUP_PARTIAL ;
 int KEY_SETATTR ;
 long PTR_ERR (struct key*) ;
 struct timespec current_kernel_time () ;
 int down_write (int *) ;
 unsigned int key_gc_delay ;
 struct key* key_get_instantiation_authkey (int ) ;
 int key_put (struct key*) ;
 struct key* key_ref_to_ptr (struct key*) ;
 int key_schedule_gc (unsigned int) ;
 struct key* lookup_user_key (int ,int,int ) ;
 int up_write (int *) ;

long keyctl_set_timeout(key_serial_t id, unsigned timeout)
{
 struct timespec now;
 struct key *key, *instkey;
 key_ref_t key_ref;
 time_t expiry;
 long ret;

 key_ref = lookup_user_key(id, KEY_LOOKUP_CREATE | KEY_LOOKUP_PARTIAL,
      KEY_SETATTR);
 if (IS_ERR(key_ref)) {


  if (PTR_ERR(key_ref) == -EACCES) {
   instkey = key_get_instantiation_authkey(id);
   if (!IS_ERR(instkey)) {
    key_put(instkey);
    key_ref = lookup_user_key(id,
         KEY_LOOKUP_PARTIAL,
         0);
    if (!IS_ERR(key_ref))
     goto okay;
   }
  }

  ret = PTR_ERR(key_ref);
  goto error;
 }

okay:
 key = key_ref_to_ptr(key_ref);


 down_write(&key->sem);

 expiry = 0;
 if (timeout > 0) {
  now = current_kernel_time();
  expiry = now.tv_sec + timeout;
 }

 key->expiry = expiry;
 key_schedule_gc(key->expiry + key_gc_delay);

 up_write(&key->sem);
 key_put(key);

 ret = 0;
error:
 return ret;
}
