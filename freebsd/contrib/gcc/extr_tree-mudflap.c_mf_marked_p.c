
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 void* htab_find (int *,int ) ;
 int * marked_trees ;

int
mf_marked_p (tree t)
{
  void *entry;

  if (marked_trees == ((void*)0))
    return 0;

  entry = htab_find (marked_trees, t);
  return (entry != ((void*)0));
}
