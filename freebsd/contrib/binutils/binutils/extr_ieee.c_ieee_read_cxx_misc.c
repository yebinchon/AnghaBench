
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_info {int const* pend; } ;
typedef int ieee_record_enum_type ;
typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int ieee_at_record_enum ;
 int ieee_error (struct ieee_info*,int const*,int ) ;
 int ieee_read_cxx_class (struct ieee_info*,int const**,unsigned long) ;
 int ieee_read_cxx_defaults (struct ieee_info*,int const**,unsigned long) ;
 int ieee_read_reference (struct ieee_info*,int const**) ;
 int ieee_require_asn (struct ieee_info*,int const**,int*) ;
 int ieee_require_atn65 (struct ieee_info*,int const**,char const**,unsigned long*) ;

__attribute__((used)) static bfd_boolean
ieee_read_cxx_misc (struct ieee_info *info, const bfd_byte **pp,
      unsigned long count)
{
  const bfd_byte *start;
  bfd_vma category;

  start = *pp;


  if (! ieee_require_asn (info, pp, &category))
    return FALSE;
  --count;

  switch (category)
    {
    default:
      ieee_error (info, start, _("unrecognized C++ misc record"));
      return FALSE;

    case 'T':
      if (! ieee_read_cxx_class (info, pp, count))
 return FALSE;
      break;

    case 'M':
      {
 bfd_vma flags;
 const char *name;
 unsigned long namlen;





 if (! ieee_require_asn (info, pp, &flags))
   return FALSE;
 if (*pp < info->pend
     && (ieee_record_enum_type) **pp == ieee_at_record_enum)
   {
     if (! ieee_require_atn65 (info, pp, &name, &namlen))
       return FALSE;
   }





      }
      break;

    case 'B':
      if (! ieee_read_cxx_defaults (info, pp, count))
 return FALSE;
      break;

    case 'z':
      {
 const char *name, *mangled, *class;
 unsigned long namlen, mangledlen, classlen;
 bfd_vma control;



 if (! ieee_require_atn65 (info, pp, &name, &namlen)
     || ! ieee_require_atn65 (info, pp, &mangled, &mangledlen)
     || ! ieee_require_atn65 (info, pp, &class, &classlen)
     || ! ieee_require_asn (info, pp, &control))
   return FALSE;


      }
      break;

    case 'R':
      if (! ieee_read_reference (info, pp))
 return FALSE;
      break;
    }

  return TRUE;
}
