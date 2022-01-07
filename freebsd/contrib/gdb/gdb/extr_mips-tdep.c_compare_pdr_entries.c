
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_byte ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ bfd_get_32 (int ,int *) ;
 int the_bfd ;

__attribute__((used)) static int
compare_pdr_entries (const void *a, const void *b)
{
  CORE_ADDR lhs = bfd_get_32 (the_bfd, (bfd_byte *) a);
  CORE_ADDR rhs = bfd_get_32 (the_bfd, (bfd_byte *) b);

  if (lhs < rhs)
    return -1;
  else if (lhs == rhs)
    return 0;
  else
    return 1;
}
