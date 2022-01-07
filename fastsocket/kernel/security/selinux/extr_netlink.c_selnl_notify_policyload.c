
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SELNL_MSG_POLICYLOAD ;
 int selnl_notify (int ,int *) ;

void selnl_notify_policyload(u32 seqno)
{
 selnl_notify(SELNL_MSG_POLICYLOAD, &seqno);
}
