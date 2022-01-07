
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TYPE_QUAL_CONST ;
 int TYPE_QUAL_RESTRICT ;
 int TYPE_QUAL_VOLATILE ;
 int cp_type_quals (int ) ;

__attribute__((used)) static int
qualifier_flags (tree type)
{
  int flags = 0;
  int quals = cp_type_quals (type);

  if (quals & TYPE_QUAL_CONST)
    flags |= 1;
  if (quals & TYPE_QUAL_VOLATILE)
    flags |= 2;
  if (quals & TYPE_QUAL_RESTRICT)
    flags |= 4;
  return flags;
}
