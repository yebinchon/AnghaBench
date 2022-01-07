
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net {int dummy; } ;
struct __nf_ct_flush_report {int report; int pid; } ;


 int kill_report ;
 int nf_ct_iterate_cleanup (struct net*,int ,struct __nf_ct_flush_report*) ;

void nf_conntrack_flush_report(struct net *net, u32 pid, int report)
{
 struct __nf_ct_flush_report fr = {
  .pid = pid,
  .report = report,
 };
 nf_ct_iterate_cleanup(net, kill_report, &fr);
}
