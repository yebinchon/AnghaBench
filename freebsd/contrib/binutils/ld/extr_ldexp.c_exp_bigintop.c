
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int node_class; int lineno; int node_code; } ;
struct TYPE_6__ {char* str; int value; } ;
struct TYPE_8__ {TYPE_2__ type; TYPE_1__ value; } ;
typedef TYPE_3__ etree_type ;
typedef int bfd_vma ;


 int INT ;
 int etree_value ;
 int lineno ;
 TYPE_3__* stat_alloc (int) ;

etree_type *
exp_bigintop (bfd_vma value, char *str)
{
  etree_type *new = stat_alloc (sizeof (new->value));
  new->type.node_code = INT;
  new->type.lineno = lineno;
  new->value.value = value;
  new->value.str = str;
  new->type.node_class = etree_value;
  return new;
}
