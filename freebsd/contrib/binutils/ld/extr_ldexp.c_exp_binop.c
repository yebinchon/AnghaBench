
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int node_code; int node_class; int lineno; } ;
struct TYPE_14__ {TYPE_4__* rhs; TYPE_4__* lhs; } ;
struct TYPE_17__ {TYPE_3__ type; TYPE_1__ binary; } ;
typedef TYPE_4__ etree_type ;
struct TYPE_15__ {int value; scalar_t__ valid_p; } ;
struct TYPE_18__ {TYPE_2__ result; } ;


 int etree_binary ;
 int exp_fold_tree_no_dot (TYPE_4__*) ;
 TYPE_4__* exp_intop (int ) ;
 TYPE_8__ expld ;
 int memcpy (TYPE_4__*,TYPE_4__*,int) ;
 TYPE_4__* stat_alloc (int) ;

etree_type *
exp_binop (int code, etree_type *lhs, etree_type *rhs)
{
  etree_type value, *new;

  value.type.node_code = code;
  value.type.lineno = lhs->type.lineno;
  value.binary.lhs = lhs;
  value.binary.rhs = rhs;
  value.type.node_class = etree_binary;
  exp_fold_tree_no_dot (&value);
  if (expld.result.valid_p)
    return exp_intop (expld.result.value);

  new = stat_alloc (sizeof (new->binary));
  memcpy (new, &value, sizeof (new->binary));
  return new;
}
