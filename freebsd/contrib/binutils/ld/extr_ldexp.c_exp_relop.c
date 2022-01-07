
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int value; int * section; } ;
struct TYPE_6__ {int node_class; int lineno; int node_code; } ;
struct TYPE_8__ {TYPE_2__ rel; TYPE_1__ type; } ;
typedef TYPE_3__ etree_type ;
typedef int bfd_vma ;
typedef int asection ;


 int REL ;
 int etree_rel ;
 int lineno ;
 TYPE_3__* stat_alloc (int) ;

etree_type *
exp_relop (asection *section, bfd_vma value)
{
  etree_type *new = stat_alloc (sizeof (new->rel));
  new->type.node_code = REL;
  new->type.lineno = lineno;
  new->type.node_class = etree_rel;
  new->rel.section = section;
  new->rel.value = value;
  return new;
}
