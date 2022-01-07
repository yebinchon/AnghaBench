
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int common_header_type ;
typedef int bfd_vma ;


 int BFD_ASSERT (int ) ;
 int parse_int (int *,int *) ;

__attribute__((used)) static bfd_vma
must_parse_int (common_header_type *ieee)
{
  bfd_vma result = 0;
  BFD_ASSERT (parse_int (ieee, &result));
  return result;
}
