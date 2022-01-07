
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_inc (int *) ;
 int pfkey_table_lock ;
 int pfkey_table_users ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static __inline__ void pfkey_lock_table(void)
{


 read_lock(&pfkey_table_lock);
 atomic_inc(&pfkey_table_users);
 read_unlock(&pfkey_table_lock);
}
