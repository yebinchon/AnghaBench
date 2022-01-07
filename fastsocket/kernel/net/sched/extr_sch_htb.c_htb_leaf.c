
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct Qdisc* q; } ;
struct TYPE_4__ {TYPE_1__ leaf; } ;
struct htb_class {TYPE_2__ un; int level; } ;
struct Qdisc {int dummy; } ;



__attribute__((used)) static struct Qdisc *htb_leaf(struct Qdisc *sch, unsigned long arg)
{
 struct htb_class *cl = (struct htb_class *)arg;
 return !cl->level ? cl->un.leaf.q : ((void*)0);
}
