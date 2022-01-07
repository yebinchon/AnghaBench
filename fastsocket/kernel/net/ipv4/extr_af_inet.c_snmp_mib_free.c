
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int free_percpu (void*) ;

void snmp_mib_free(void *ptr[2])
{
 BUG_ON(ptr == ((void*)0));
 free_percpu(ptr[0]);
 free_percpu(ptr[1]);
 ptr[0] = ptr[1] = ((void*)0);
}
