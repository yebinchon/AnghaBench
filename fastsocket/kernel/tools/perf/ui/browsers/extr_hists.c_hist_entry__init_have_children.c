
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int has_children; } ;
struct hist_entry {int init_have_children; int sorted_chain; TYPE_1__ ms; } ;


 int RB_EMPTY_ROOT (int *) ;
 int callchain__init_have_children (int *) ;

__attribute__((used)) static void hist_entry__init_have_children(struct hist_entry *he)
{
 if (!he->init_have_children) {
  he->ms.has_children = !RB_EMPTY_ROOT(&he->sorted_chain);
  callchain__init_have_children(&he->sorted_chain);
  he->init_have_children = 1;
 }
}
