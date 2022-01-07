
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int status; } ;
struct __nf_ct_flush_report {int report; int pid; } ;


 int IPCT_DESTROY ;
 int IPS_DYING_BIT ;
 scalar_t__ nf_conntrack_event_report (int ,struct nf_conn*,int ,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int kill_report(struct nf_conn *i, void *data)
{
 struct __nf_ct_flush_report *fr = (struct __nf_ct_flush_report *)data;


 if (nf_conntrack_event_report(IPCT_DESTROY, i,
          fr->pid, fr->report) < 0)
  return 1;


 set_bit(IPS_DYING_BIT, &i->status);
 return 1;
}
