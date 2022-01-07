
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* varinfo_t ;
typedef int tree ;


 int gcc_assert (void*) ;
 void** pointer_map_insert (int ,int ) ;
 int vi_for_tree ;

__attribute__((used)) static void
insert_vi_for_tree (tree t, varinfo_t vi)
{
  void **slot = pointer_map_insert (vi_for_tree, t);
  gcc_assert (vi);
  gcc_assert (*slot == ((void*)0));
  *slot = vi;
}
