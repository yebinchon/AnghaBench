
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct sra_elt {int * replacement; scalar_t__ is_scalar; } ;


 int INSERT ;
 int instantiate_element (struct sra_elt*) ;
 int instantiate_missing_elements (struct sra_elt*) ;
 struct sra_elt* lookup_element (struct sra_elt*,int ,int ,int ) ;

__attribute__((used)) static void
instantiate_missing_elements_1 (struct sra_elt *elt, tree child, tree type)
{
  struct sra_elt *sub = lookup_element (elt, child, type, INSERT);
  if (sub->is_scalar)
    {
      if (sub->replacement == ((void*)0))
 instantiate_element (sub);
    }
  else
    instantiate_missing_elements (sub);
}
