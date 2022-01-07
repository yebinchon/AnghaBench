
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Context {int dummy; } ;
typedef int _Unwind_Ptr ;






 unsigned char DW_EH_PE_omit ;


 int _Unwind_GetDataRelBase (struct _Unwind_Context*) ;
 int _Unwind_GetRegionStart (struct _Unwind_Context*) ;
 int _Unwind_GetTextRelBase (struct _Unwind_Context*) ;
 int __gxx_abort () ;

__attribute__((used)) static _Unwind_Ptr
base_of_encoded_value (unsigned char encoding, struct _Unwind_Context *context)
{
  if (encoding == DW_EH_PE_omit)
    return 0;

  switch (encoding & 0x70)
    {
    case 133:
    case 129:
    case 132:
      return 0;

    case 128:
      return _Unwind_GetTextRelBase (context);
    case 131:
      return _Unwind_GetDataRelBase (context);
    case 130:
      return _Unwind_GetRegionStart (context);
    }
  __gxx_abort ();
}
