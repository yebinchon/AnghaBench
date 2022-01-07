
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct pending_abstract_type {scalar_t__ type; } ;



__attribute__((used)) static int
pat_compare (const void* val1, const void* val2)
{
  const struct pending_abstract_type *pat1 =
     (const struct pending_abstract_type *) val1;
  tree type2 = (tree)val2;

  return (pat1->type == type2);
}
