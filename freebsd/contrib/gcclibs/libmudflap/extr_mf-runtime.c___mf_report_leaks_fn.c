
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mfsplay_tree_node ;
typedef int __mf_object_t ;
struct TYPE_3__ {scalar_t__ value; } ;


 int __mf_describe_object (int *) ;
 int fprintf (int ,char*,unsigned int) ;
 int stderr ;

__attribute__((used)) static int
__mf_report_leaks_fn (mfsplay_tree_node n, void *param)
{
  __mf_object_t *node = (__mf_object_t *) n->value;
  unsigned *count = (unsigned *) param;

  if (count != ((void*)0))
    (*count) ++;

  fprintf (stderr, "Leaked object %u:\n", (*count));
  __mf_describe_object (node);

  return 0;
}
