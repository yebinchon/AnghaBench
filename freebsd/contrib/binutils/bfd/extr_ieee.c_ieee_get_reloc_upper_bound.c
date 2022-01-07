
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sec_ptr ;
typedef int bfd ;
typedef int arelent ;
struct TYPE_3__ {int flags; int reloc_count; } ;


 int SEC_DEBUGGING ;
 int ieee_slurp_section_data (int *) ;

__attribute__((used)) static long
ieee_get_reloc_upper_bound (bfd *abfd, sec_ptr asect)
{
  if ((asect->flags & SEC_DEBUGGING) != 0)
    return 0;
  if (! ieee_slurp_section_data (abfd))
    return -1;
  return (asect->reloc_count + 1) * sizeof (arelent *);
}
