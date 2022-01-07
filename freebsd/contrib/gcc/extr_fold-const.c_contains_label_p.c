
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ NULL_TREE ;
 int contains_label_1 ;
 scalar_t__ walk_tree (int *,int ,int *,int *) ;

__attribute__((used)) static bool
contains_label_p (tree st)
{
  return (walk_tree (&st, contains_label_1 , ((void*)0), ((void*)0)) != NULL_TREE);
}
