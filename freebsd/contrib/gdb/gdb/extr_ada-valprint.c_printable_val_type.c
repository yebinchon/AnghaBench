
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int ada_aligned_type (struct type*) ;
 struct type* ada_to_fixed_type (int ,char*,int ,int *) ;

__attribute__((used)) static struct type *
printable_val_type (struct type *type, char *valaddr)
{
  return ada_to_fixed_type (ada_aligned_type (type), valaddr, 0, ((void*)0));
}
