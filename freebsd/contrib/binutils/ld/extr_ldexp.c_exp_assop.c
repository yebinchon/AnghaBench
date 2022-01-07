
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char const* dst; TYPE_3__* src; } ;
struct TYPE_8__ {int node_code; int node_class; int lineno; } ;
struct TYPE_9__ {TYPE_1__ assign; TYPE_2__ type; } ;
typedef TYPE_3__ etree_type ;


 int etree_assign ;
 TYPE_3__* stat_alloc (int) ;

etree_type *
exp_assop (int code, const char *dst, etree_type *src)
{
  etree_type *new;

  new = stat_alloc (sizeof (new->assign));
  new->type.node_code = code;
  new->type.lineno = src->type.lineno;
  new->type.node_class = etree_assign;
  new->assign.src = src;
  new->assign.dst = dst;
  return new;
}
