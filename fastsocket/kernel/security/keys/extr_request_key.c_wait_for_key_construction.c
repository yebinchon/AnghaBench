
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* x; } ;
struct key {TYPE_1__ type_data; int flags; } ;


 int KEY_FLAG_NEGATIVE ;
 int KEY_FLAG_USER_CONSTRUCT ;
 int TASK_INTERRUPTIBLE ;
 int TASK_UNINTERRUPTIBLE ;
 int key_validate (struct key*) ;
 int key_wait_bit ;
 int key_wait_bit_intr ;
 int smp_rmb () ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_on_bit (int *,int ,int ,int ) ;

int wait_for_key_construction(struct key *key, bool intr)
{
 int ret;

 ret = wait_on_bit(&key->flags, KEY_FLAG_USER_CONSTRUCT,
     intr ? key_wait_bit_intr : key_wait_bit,
     intr ? TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE);
 if (ret < 0)
  return ret;
 if (test_bit(KEY_FLAG_NEGATIVE, &key->flags)) {
  smp_rmb();
  return (long)key->type_data.x[0];
 }
 return key_validate(key);
}
