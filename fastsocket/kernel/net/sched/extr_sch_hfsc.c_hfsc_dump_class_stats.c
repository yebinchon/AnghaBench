
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xstats ;
struct tc_hfsc_stats {int rtwork; int work; int period; int level; } ;
struct TYPE_6__ {int qlen; } ;
struct hfsc_class {TYPE_3__ qstats; int rate_est; int bstats; int cl_cumul; int cl_total; int cl_vtperiod; int level; TYPE_2__* qdisc; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int dummy; } ;
struct TYPE_4__ {int qlen; } ;
struct TYPE_5__ {TYPE_1__ q; } ;


 int gnet_stats_copy_app (struct gnet_dump*,struct tc_hfsc_stats*,int) ;
 scalar_t__ gnet_stats_copy_basic (struct gnet_dump*,int *) ;
 scalar_t__ gnet_stats_copy_queue (struct gnet_dump*,TYPE_3__*) ;
 scalar_t__ gnet_stats_copy_rate_est (struct gnet_dump*,int *) ;

__attribute__((used)) static int
hfsc_dump_class_stats(struct Qdisc *sch, unsigned long arg,
 struct gnet_dump *d)
{
 struct hfsc_class *cl = (struct hfsc_class *)arg;
 struct tc_hfsc_stats xstats;

 cl->qstats.qlen = cl->qdisc->q.qlen;
 xstats.level = cl->level;
 xstats.period = cl->cl_vtperiod;
 xstats.work = cl->cl_total;
 xstats.rtwork = cl->cl_cumul;

 if (gnet_stats_copy_basic(d, &cl->bstats) < 0 ||
     gnet_stats_copy_rate_est(d, &cl->rate_est) < 0 ||
     gnet_stats_copy_queue(d, &cl->qstats) < 0)
  return -1;

 return gnet_stats_copy_app(d, &xstats, sizeof(xstats));
}
