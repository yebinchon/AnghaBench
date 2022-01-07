
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_dec_and_test (int *) ;
 int pfkey_table_users ;
 int pfkey_table_wait ;
 int wake_up (int *) ;

__attribute__((used)) static __inline__ void pfkey_unlock_table(void)
{
 if (atomic_dec_and_test(&pfkey_table_users))
  wake_up(&pfkey_table_wait);
}
