
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_hfsc_qopt {int defcls; } ;
struct nlattr {int dummy; } ;
struct hfsc_sched {int defcls; } ;
struct Qdisc {int dummy; } ;


 int EINVAL ;
 struct tc_hfsc_qopt* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 struct hfsc_sched* qdisc_priv (struct Qdisc*) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int
hfsc_change_qdisc(struct Qdisc *sch, struct nlattr *opt)
{
 struct hfsc_sched *q = qdisc_priv(sch);
 struct tc_hfsc_qopt *qopt;

 if (opt == ((void*)0) || nla_len(opt) < sizeof(*qopt))
  return -EINVAL;
 qopt = nla_data(opt);

 sch_tree_lock(sch);
 q->defcls = qopt->defcls;
 sch_tree_unlock(sch);

 return 0;
}
