
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct timespec {scalar_t__ tv_sec; } ;
struct key {scalar_t__ revoked_at; int sem; TYPE_1__* type; int flags; } ;
struct TYPE_2__ {int (* revoke ) (struct key*) ;} ;


 int KEY_FLAG_REVOKED ;
 struct timespec current_kernel_time () ;
 int down_write_nested (int *,int) ;
 int key_check (struct key*) ;
 scalar_t__ key_gc_delay ;
 int key_schedule_gc (scalar_t__) ;
 int stub1 (struct key*) ;
 int test_and_set_bit (int ,int *) ;
 int up_write (int *) ;

void key_revoke(struct key *key)
{
 struct timespec now;
 time_t time;

 key_check(key);






 down_write_nested(&key->sem, 1);
 if (!test_and_set_bit(KEY_FLAG_REVOKED, &key->flags) &&
     key->type->revoke)
  key->type->revoke(key);


 now = current_kernel_time();
 time = now.tv_sec;
 if (key->revoked_at == 0 || key->revoked_at > time) {
  key->revoked_at = time;
  key_schedule_gc(key->revoked_at + key_gc_delay);
 }

 up_write(&key->sem);
}
