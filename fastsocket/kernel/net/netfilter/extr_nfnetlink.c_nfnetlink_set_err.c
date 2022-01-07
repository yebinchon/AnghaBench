
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int netlink_set_err (int ,int ,int ,int) ;
 int nfnl ;

void nfnetlink_set_err(u32 pid, u32 group, int error)
{
 netlink_set_err(nfnl, pid, group, error);
}
