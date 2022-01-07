
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_info {int dummy; } ;
typedef scalar_t__ ieee_record_enum_type ;
typedef int bfd_vma ;
typedef unsigned int bfd_byte ;
typedef int bfd_boolean ;


 int FALSE ;
 int _ (char*) ;
 scalar_t__ ieee_asn_record_enum ;
 scalar_t__ ieee_e2_first_byte_enum ;
 int ieee_error (struct ieee_info*,unsigned int const*,int ) ;
 int ieee_read_expression (struct ieee_info*,unsigned int const**,int *) ;
 int ieee_read_number (struct ieee_info*,unsigned int const**,int *) ;

__attribute__((used)) static bfd_boolean
ieee_require_asn (struct ieee_info *info, const bfd_byte **pp, bfd_vma *pv)
{
  const bfd_byte *start;
  ieee_record_enum_type c;
  bfd_vma varindx;

  start = *pp;

  c = (ieee_record_enum_type) **pp;
  if (c != ieee_e2_first_byte_enum)
    {
      ieee_error (info, start, _("missing required ASN"));
      return FALSE;
    }
  ++*pp;

  c = (ieee_record_enum_type) (((unsigned int) c << 8) | **pp);
  if (c != ieee_asn_record_enum)
    {
      ieee_error (info, start, _("missing required ASN"));
      return FALSE;
    }
  ++*pp;


  if (! ieee_read_number (info, pp, &varindx))
    return FALSE;

  return ieee_read_expression (info, pp, pv);
}
