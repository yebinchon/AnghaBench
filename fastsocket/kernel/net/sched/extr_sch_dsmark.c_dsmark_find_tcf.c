
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct dsmark_qdisc_data {struct tcf_proto* filter_list; } ;
struct Qdisc {int dummy; } ;


 struct dsmark_qdisc_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static inline struct tcf_proto **dsmark_find_tcf(struct Qdisc *sch,
       unsigned long cl)
{
 struct dsmark_qdisc_data *p = qdisc_priv(sch);
 return &p->filter_list;
}
