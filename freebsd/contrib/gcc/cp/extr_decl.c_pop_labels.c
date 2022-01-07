
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int htab_traverse (int *,int ,int ) ;
 int * named_labels ;
 int pop_labels_1 ;

__attribute__((used)) static void
pop_labels (tree block)
{
  if (named_labels)
    {
      htab_traverse (named_labels, pop_labels_1, block);
      named_labels = ((void*)0);
    }
}
