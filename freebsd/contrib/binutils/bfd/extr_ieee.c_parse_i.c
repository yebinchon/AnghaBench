
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int common_header_type ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 int parse_int (int *,int*) ;

__attribute__((used)) static int
parse_i (common_header_type *ieee, bfd_boolean *ok)
{
  bfd_vma x = 0;
  *ok = parse_int (ieee, &x);
  return x;
}
