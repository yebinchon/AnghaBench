
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int flagword ;
struct TYPE_3__ {int flags; scalar_t__ lma; } ;
typedef TYPE_1__ asection ;


 int SEC_HAS_CONTENTS ;
 int SEC_LOAD ;
 scalar_t__ bfd_get_section_size (TYPE_1__ const* const) ;

__attribute__((used)) static int
compare_section_lma (const void *arg1, const void *arg2)
{
  const asection *const *sec1 = arg1;
  const asection *const *sec2 = arg2;
  flagword flags1, flags2;


  flags1 = (*sec1)->flags;
  flags2 = (*sec2)->flags;
  if ((flags1 & SEC_HAS_CONTENTS) == 0
      || (flags1 & SEC_LOAD) == 0)
    {
      if ((flags2 & SEC_HAS_CONTENTS) != 0
   && (flags2 & SEC_LOAD) != 0)
 return -1;
    }
  else
    {
      if ((flags2 & SEC_HAS_CONTENTS) == 0
   || (flags2 & SEC_LOAD) == 0)
 return 1;
    }


  if ((*sec1)->lma > (*sec2)->lma)
    return 1;
  else if ((*sec1)->lma < (*sec2)->lma)
    return -1;


  if (bfd_get_section_size (*sec1) > bfd_get_section_size (*sec2))
    return 1;
  else if (bfd_get_section_size (*sec1) < bfd_get_section_size (*sec2))
    return -1;

  return 0;
}
