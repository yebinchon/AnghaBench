
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct sra_elt {int element; struct sra_elt* parent; } ;


 int generate_one_element_ref (struct sra_elt*,int ) ;

__attribute__((used)) static tree
generate_element_ref (struct sra_elt *elt)
{
  if (elt->parent)
    return generate_one_element_ref (elt, generate_element_ref (elt->parent));
  else
    return elt->element;
}
