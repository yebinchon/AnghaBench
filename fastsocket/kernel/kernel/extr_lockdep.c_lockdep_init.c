
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHAINHASH_SIZE ;
 int CLASSHASH_SIZE ;
 int INIT_LIST_HEAD (scalar_t__) ;
 scalar_t__ chainhash_table ;
 scalar_t__ classhash_table ;
 int lockdep_initialized ;

void lockdep_init(void)
{
 int i;







 if (lockdep_initialized)
  return;

 for (i = 0; i < CLASSHASH_SIZE; i++)
  INIT_LIST_HEAD(classhash_table + i);

 for (i = 0; i < CHAINHASH_SIZE; i++)
  INIT_LIST_HEAD(chainhash_table + i);

 lockdep_initialized = 1;
}
