
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ bsp; scalar_t__ stack; } ;
struct TYPE_5__ {int * builtins; int * types; scalar_t__ alloc; } ;
struct TYPE_4__ {int * vars; scalar_t__ alloc; } ;
struct ieee_info {TYPE_3__ blockstack; int const* pend; TYPE_2__ types; int * tags; int * global_types; int * global_vars; TYPE_1__ vars; int saw_filename; int const* bytes; int * abfd; void* dhandle; } ;
typedef int ieee_record_enum_type ;
typedef int bfd_size_type ;
typedef int const bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;


 unsigned int BUILTIN_TYPE_COUNT ;
 int DEBUG_TYPE_NULL ;
 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int ieee_at_record_enum ;



 int ieee_error (struct ieee_info*,int const*,int ) ;

 int ieee_number_repeat_end_enum ;

 int parse_ieee_atn (struct ieee_info*,int const**) ;
 int parse_ieee_bb (struct ieee_info*,int const**) ;
 int parse_ieee_be (struct ieee_info*,int const**) ;
 int parse_ieee_nn (struct ieee_info*,int const**) ;
 int parse_ieee_ty (struct ieee_info*,int const**) ;

bfd_boolean
parse_ieee (void *dhandle, bfd *abfd, const bfd_byte *bytes, bfd_size_type len)
{
  struct ieee_info info;
  unsigned int i;
  const bfd_byte *p, *pend;

  info.dhandle = dhandle;
  info.abfd = abfd;
  info.bytes = bytes;
  info.pend = bytes + len;
  info.blockstack.bsp = info.blockstack.stack;
  info.saw_filename = FALSE;
  info.vars.alloc = 0;
  info.vars.vars = ((void*)0);
  info.global_vars = ((void*)0);
  info.types.alloc = 0;
  info.types.types = ((void*)0);
  info.global_types = ((void*)0);
  info.tags = ((void*)0);
  for (i = 0; i < BUILTIN_TYPE_COUNT; i++)
    info.types.builtins[i] = DEBUG_TYPE_NULL;

  p = bytes;
  pend = info.pend;
  while (p < pend)
    {
      const bfd_byte *record_start;
      ieee_record_enum_type c;

      record_start = p;

      c = (ieee_record_enum_type) *p++;

      if (c == ieee_at_record_enum)
 c = (ieee_record_enum_type) (((unsigned int) c << 8) | *p++);

      if (c <= ieee_number_repeat_end_enum)
 {
   ieee_error (&info, record_start, _("unexpected number"));
   return FALSE;
 }

      switch (c)
 {
 default:
   ieee_error (&info, record_start, _("unexpected record type"));
   return FALSE;

 case 131:
   if (! parse_ieee_bb (&info, &p))
     return FALSE;
   break;

 case 130:
   if (! parse_ieee_be (&info, &p))
     return FALSE;
   break;

 case 129:
   if (! parse_ieee_nn (&info, &p))
     return FALSE;
   break;

 case 128:
   if (! parse_ieee_ty (&info, &p))
     return FALSE;
   break;

 case 132:
   if (! parse_ieee_atn (&info, &p))
     return FALSE;
   break;
 }
    }

  if (info.blockstack.bsp != info.blockstack.stack)
    {
      ieee_error (&info, (const bfd_byte *) ((void*)0),
    _("blocks left on stack at end"));
      return FALSE;
    }

  return TRUE;
}
