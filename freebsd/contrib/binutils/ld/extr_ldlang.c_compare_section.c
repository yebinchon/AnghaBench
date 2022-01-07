
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sort_type ;
struct TYPE_6__ {int owner; } ;
typedef TYPE_1__ asection ;


 int abort () ;
 int bfd_get_section_name (int ,TYPE_1__*) ;
 int bfd_section_alignment (int ,TYPE_1__*) ;




 int strcmp (int ,int ) ;

__attribute__((used)) static int
compare_section (sort_type sort, asection *asec, asection *bsec)
{
  int ret;

  switch (sort)
    {
    default:
      abort ();

    case 130:
      ret = (bfd_section_alignment (bsec->owner, bsec)
      - bfd_section_alignment (asec->owner, asec));
      if (ret)
 break;


    case 129:
      ret = strcmp (bfd_get_section_name (asec->owner, asec),
      bfd_get_section_name (bsec->owner, bsec));
      break;

    case 128:
      ret = strcmp (bfd_get_section_name (asec->owner, asec),
      bfd_get_section_name (bsec->owner, bsec));
      if (ret)
 break;


    case 131:
      ret = (bfd_section_alignment (bsec->owner, bsec)
      - bfd_section_alignment (asec->owner, asec));
      break;
    }

  return ret;
}
