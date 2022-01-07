
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_info {int const* pend; } ;
typedef scalar_t__ ieee_record_enum_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int ieee_eof (struct ieee_info*) ;
 int ieee_error (struct ieee_info*,int const*,int ) ;
 scalar_t__ ieee_extension_length_1_enum ;
 scalar_t__ ieee_extension_length_2_enum ;

__attribute__((used)) static bfd_boolean
ieee_read_optional_id (struct ieee_info *info, const bfd_byte **pp,
         const char **pname, unsigned long *pnamlen,
         bfd_boolean *ppresent)
{
  bfd_byte b;
  unsigned long len;

  if (*pp >= info->pend)
    {
      ieee_eof (info);
      return FALSE;
    }

  b = **pp;
  ++*pp;

  if (b <= 0x7f)
    len = b;
  else if ((ieee_record_enum_type) b == ieee_extension_length_1_enum)
    {
      len = **pp;
      ++*pp;
    }
  else if ((ieee_record_enum_type) b == ieee_extension_length_2_enum)
    {
      len = (**pp << 8) + (*pp)[1];
      *pp += 2;
    }
  else
    {
      if (ppresent != ((void*)0))
 {
   --*pp;
   *ppresent = FALSE;
   return TRUE;
 }
      ieee_error (info, *pp - 1, _("invalid string length"));
      return FALSE;
    }

  if ((unsigned long) (info->pend - *pp) < len)
    {
      ieee_eof (info);
      return FALSE;
    }

  *pname = (const char *) *pp;
  *pnamlen = len;
  *pp += len;

  if (ppresent != ((void*)0))
    *ppresent = TRUE;

  return TRUE;
}
