
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_info {int const* pend; } ;
typedef scalar_t__ ieee_record_enum_type ;
typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int ieee_eof (struct ieee_info*) ;
 int ieee_error (struct ieee_info*,int const*,int ) ;
 scalar_t__ ieee_number_end_enum ;
 scalar_t__ ieee_number_repeat_end_enum ;
 scalar_t__ ieee_number_repeat_start_enum ;

__attribute__((used)) static bfd_boolean
ieee_read_optional_number (struct ieee_info *info, const bfd_byte **pp,
      bfd_vma *pv, bfd_boolean *ppresent)
{
  ieee_record_enum_type b;

  if (*pp >= info->pend)
    {
      if (ppresent != ((void*)0))
 {
   *ppresent = FALSE;
   return TRUE;
 }
      ieee_eof (info);
      return FALSE;
    }

  b = (ieee_record_enum_type) **pp;
  ++*pp;

  if (b <= ieee_number_end_enum)
    {
      *pv = (bfd_vma) b;
      if (ppresent != ((void*)0))
 *ppresent = TRUE;
      return TRUE;
    }

  if (b >= ieee_number_repeat_start_enum && b <= ieee_number_repeat_end_enum)
    {
      unsigned int i;

      i = (int) b - (int) ieee_number_repeat_start_enum;
      if (*pp + i - 1 >= info->pend)
 {
   ieee_eof (info);
   return FALSE;
 }

      *pv = 0;
      for (; i > 0; i--)
 {
   *pv <<= 8;
   *pv += **pp;
   ++*pp;
 }

      if (ppresent != ((void*)0))
 *ppresent = TRUE;

      return TRUE;
    }

  if (ppresent != ((void*)0))
    {
      --*pp;
      *ppresent = FALSE;
      return TRUE;
    }

  ieee_error (info, *pp - 1, _("invalid number"));
  return FALSE;
}
