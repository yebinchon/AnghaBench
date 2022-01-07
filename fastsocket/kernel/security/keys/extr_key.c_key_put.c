
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int usage; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int key_check (struct key*) ;
 int key_schedule_gc_work () ;

void key_put(struct key *key)
{
 if (key) {
  key_check(key);

  if (atomic_dec_and_test(&key->usage))
   key_schedule_gc_work();
 }
}
