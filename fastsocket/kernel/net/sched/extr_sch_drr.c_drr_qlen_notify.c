
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drr_class {int alist; TYPE_2__* qdisc; } ;
struct Qdisc {int dummy; } ;
struct TYPE_3__ {scalar_t__ qlen; } ;
struct TYPE_4__ {TYPE_1__ q; } ;


 int list_del (int *) ;

__attribute__((used)) static void drr_qlen_notify(struct Qdisc *csh, unsigned long arg)
{
 struct drr_class *cl = (struct drr_class *)arg;

 if (cl->qdisc->q.qlen == 0)
  list_del(&cl->alist);
}
