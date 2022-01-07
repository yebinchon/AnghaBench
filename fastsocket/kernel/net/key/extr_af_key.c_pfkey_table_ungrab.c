
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pfkey_table_lock ;
 int pfkey_table_wait ;
 int wake_up (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static __inline__ void pfkey_table_ungrab(void)
{
 write_unlock_bh(&pfkey_table_lock);
 wake_up(&pfkey_table_wait);
}
