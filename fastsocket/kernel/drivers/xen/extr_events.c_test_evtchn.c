
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shared_info {int * evtchn_pending; } ;


 struct shared_info* HYPERVISOR_shared_info ;
 int sync_test_bit (int,int *) ;

__attribute__((used)) static inline int test_evtchn(int port)
{
 struct shared_info *s = HYPERVISOR_shared_info;
 return sync_test_bit(port, &s->evtchn_pending[0]);
}
