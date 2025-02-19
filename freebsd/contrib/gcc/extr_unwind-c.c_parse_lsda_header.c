
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _Unwind_Context {int dummy; } ;
struct TYPE_3__ {unsigned char ttype_encoding; unsigned char const* TType; unsigned char const* action_table; int call_site_encoding; int Start; int LPStart; } ;
typedef TYPE_1__ lsda_header_info ;
typedef int _Unwind_Word ;


 unsigned char DW_EH_PE_omit ;
 int _Unwind_GetRegionStart (struct _Unwind_Context*) ;
 unsigned char* read_encoded_value (struct _Unwind_Context*,unsigned char,unsigned char const*,int *) ;
 unsigned char* read_uleb128 (unsigned char const*,int*) ;

__attribute__((used)) static const unsigned char *
parse_lsda_header (struct _Unwind_Context *context, const unsigned char *p,
     lsda_header_info *info)
{
  _Unwind_Word tmp;
  unsigned char lpstart_encoding;

  info->Start = (context ? _Unwind_GetRegionStart (context) : 0);


  lpstart_encoding = *p++;
  if (lpstart_encoding != DW_EH_PE_omit)
    p = read_encoded_value (context, lpstart_encoding, p, &info->LPStart);
  else
    info->LPStart = info->Start;


  info->ttype_encoding = *p++;
  if (info->ttype_encoding != DW_EH_PE_omit)
    {
      p = read_uleb128 (p, &tmp);
      info->TType = p + tmp;
    }
  else
    info->TType = 0;



  info->call_site_encoding = *p++;
  p = read_uleb128 (p, &tmp);
  info->action_table = p + tmp;

  return p;
}
