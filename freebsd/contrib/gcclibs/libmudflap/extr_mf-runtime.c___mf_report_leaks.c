
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __MF_TYPE_HEAP ;
 int __MF_TYPE_HEAP_I ;
 int __mf_object_tree (int ) ;
 int __mf_report_leaks_fn ;
 int mfsplay_tree_foreach (int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned
__mf_report_leaks ()
{
  unsigned count = 0;

  (void) mfsplay_tree_foreach (__mf_object_tree (__MF_TYPE_HEAP),
                             __mf_report_leaks_fn, & count);
  (void) mfsplay_tree_foreach (__mf_object_tree (__MF_TYPE_HEAP_I),
                             __mf_report_leaks_fn, & count);

  return count;
}
