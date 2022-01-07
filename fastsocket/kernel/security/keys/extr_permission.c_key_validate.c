
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; } ;
struct key {scalar_t__ expiry; int flags; } ;


 int EKEYEXPIRED ;
 int EKEYREVOKED ;
 int KEY_FLAG_DEAD ;
 int KEY_FLAG_REVOKED ;
 struct timespec current_kernel_time () ;
 scalar_t__ test_bit (int ,int *) ;

int key_validate(struct key *key)
{
 struct timespec now;
 int ret = 0;

 if (key) {

  ret = -EKEYREVOKED;
  if (test_bit(KEY_FLAG_REVOKED, &key->flags) ||
      test_bit(KEY_FLAG_DEAD, &key->flags))
   goto error;


  ret = 0;
  if (key->expiry) {
   now = current_kernel_time();
   if (now.tv_sec >= key->expiry)
    ret = -EKEYEXPIRED;
  }
 }

error:
 return ret;
}
