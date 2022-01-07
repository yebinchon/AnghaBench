
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int node_code; int node_class; int lineno; } ;
struct TYPE_16__ {TYPE_2__ type; TYPE_5__* child; } ;
struct TYPE_17__ {int lineno; } ;
struct TYPE_18__ {TYPE_3__ unary; TYPE_4__ type; } ;
typedef TYPE_5__ etree_type ;
struct TYPE_14__ {int value; scalar_t__ valid_p; } ;
struct TYPE_19__ {TYPE_1__ result; } ;


 int etree_unary ;
 int exp_fold_tree_no_dot (TYPE_5__*) ;
 TYPE_5__* exp_intop (int ) ;
 TYPE_9__ expld ;
 int memcpy (TYPE_5__*,TYPE_5__*,int) ;
 TYPE_5__* stat_alloc (int) ;

etree_type *
exp_unop (int code, etree_type *child)
{
  etree_type value, *new;

  value.unary.type.node_code = code;
  value.unary.type.lineno = child->type.lineno;
  value.unary.child = child;
  value.unary.type.node_class = etree_unary;
  exp_fold_tree_no_dot (&value);
  if (expld.result.valid_p)
    return exp_intop (expld.result.value);

  new = stat_alloc (sizeof (new->unary));
  memcpy (new, &value, sizeof (new->unary));
  return new;
}
