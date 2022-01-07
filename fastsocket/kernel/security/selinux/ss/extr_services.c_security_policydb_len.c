
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; } ;


 int policy_rwlock ;
 TYPE_1__ policydb ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

size_t security_policydb_len(void)
{
 size_t len;

 read_lock(&policy_rwlock);
 len = policydb.len;
 read_unlock(&policy_rwlock);

 return len;
}
