
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dbase; int tbase; } ;
typedef int _Unwind_Ptr ;





 unsigned char DW_EH_PE_omit ;


 int gcc_unreachable () ;

__attribute__((used)) static _Unwind_Ptr
base_from_object (unsigned char encoding, struct object *ob)
{
  if (encoding == DW_EH_PE_omit)
    return 0;

  switch (encoding & 0x70)
    {
    case 132:
    case 129:
    case 131:
      return 0;

    case 128:
      return (_Unwind_Ptr) ob->tbase;
    case 130:
      return (_Unwind_Ptr) ob->dbase;
    default:
      gcc_unreachable ();
    }
}
