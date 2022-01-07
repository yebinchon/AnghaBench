
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _uw ;
typedef int __gnu_unwind_state ;
typedef int _Unwind_Reason_Code ;
typedef int _Unwind_Context ;


 int CODE_FINISH ;
 int R_LR ;
 int R_PC ;
 int R_SP ;
 int _URC_FAILURE ;
 int _URC_OK ;
 int _UVRSC_CORE ;
 int _UVRSC_FPA ;
 int _UVRSC_VFP ;
 int _UVRSC_WMMXC ;
 int _UVRSC_WMMXD ;
 int _UVRSD_DOUBLE ;
 int _UVRSD_FPAX ;
 int _UVRSD_UINT32 ;
 int _UVRSD_UINT64 ;
 int _UVRSD_VFPX ;
 scalar_t__ _UVRSR_OK ;
 int _Unwind_VRS_Get (int *,int ,int,int ,int*) ;
 scalar_t__ _Unwind_VRS_Pop (int *,int ,int,int ) ;
 int _Unwind_VRS_Set (int *,int ,int,int ,int*) ;
 int next_unwind_byte (int *) ;

_Unwind_Reason_Code
__gnu_unwind_execute (_Unwind_Context * context, __gnu_unwind_state * uws)
{
  _uw op;
  int set_pc;
  _uw reg;

  set_pc = 0;
  for (;;)
    {
      op = next_unwind_byte (uws);
      if (op == CODE_FINISH)
 {

   if (!set_pc)
     {
       _Unwind_VRS_Get (context, _UVRSC_CORE, R_LR, _UVRSD_UINT32,
          &reg);
       _Unwind_VRS_Set (context, _UVRSC_CORE, R_PC, _UVRSD_UINT32,
          &reg);
       set_pc = 1;
     }

   break;
 }
      if ((op & 0x80) == 0)
 {

   _uw offset;

   offset = ((op & 0x3f) << 2) + 4;
   _Unwind_VRS_Get (context, _UVRSC_CORE, R_SP, _UVRSD_UINT32, &reg);
   if (op & 0x40)
     reg -= offset;
   else
     reg += offset;
   _Unwind_VRS_Set (context, _UVRSC_CORE, R_SP, _UVRSD_UINT32, &reg);
   continue;
 }

      if ((op & 0xf0) == 0x80)
 {
   op = (op << 8) | next_unwind_byte (uws);
   if (op == 0x8000)
     {

       return _URC_FAILURE;
     }

   op = (op << 4) & 0xfff0;
   if (_Unwind_VRS_Pop (context, _UVRSC_CORE, op, _UVRSD_UINT32)
       != _UVRSR_OK)
     return _URC_FAILURE;
   if (op & (1 << R_PC))
     set_pc = 1;
   continue;
 }
      if ((op & 0xf0) == 0x90)
 {
   op &= 0xf;
   if (op == 13 || op == 15)

     return _URC_FAILURE;

   _Unwind_VRS_Get (context, _UVRSC_CORE, op, _UVRSD_UINT32, &reg);
   _Unwind_VRS_Set (context, _UVRSC_CORE, R_SP, _UVRSD_UINT32, &reg);
   continue;
 }
      if ((op & 0xf0) == 0xa0)
 {

   _uw mask;

   mask = (0xff0 >> (7 - (op & 7))) & 0xff0;
   if (op & 8)
     mask |= (1 << R_LR);
   if (_Unwind_VRS_Pop (context, _UVRSC_CORE, mask, _UVRSD_UINT32)
       != _UVRSR_OK)
     return _URC_FAILURE;
   continue;
 }
      if ((op & 0xf0) == 0xb0)
 {

   if (op == 0xb1)
     {
       op = next_unwind_byte (uws);
       if (op == 0 || ((op & 0xf0) != 0))

  return _URC_FAILURE;

       if (_Unwind_VRS_Pop (context, _UVRSC_CORE, op, _UVRSD_UINT32)
    != _UVRSR_OK)
  return _URC_FAILURE;
       continue;
     }
   if (op == 0xb2)
     {

       int shift;

       _Unwind_VRS_Get (context, _UVRSC_CORE, R_SP, _UVRSD_UINT32,
          &reg);
       op = next_unwind_byte (uws);
       shift = 2;
       while (op & 0x80)
  {
    reg += ((op & 0x7f) << shift);
    shift += 7;
    op = next_unwind_byte (uws);
  }
       reg += ((op & 0x7f) << shift) + 0x204;
       _Unwind_VRS_Set (context, _UVRSC_CORE, R_SP, _UVRSD_UINT32,
          &reg);
       continue;
     }
   if (op == 0xb3)
     {

       op = next_unwind_byte (uws);
       op = ((op & 0xf0) << 12) | ((op & 0xf) + 1);
       if (_Unwind_VRS_Pop (context, _UVRSC_VFP, op, _UVRSD_VFPX)
    != _UVRSR_OK)
  return _URC_FAILURE;
       continue;
     }
   if ((op & 0xfc) == 0xb4)
     {

       op = 0x40000 | ((op & 3) + 1);
       if (_Unwind_VRS_Pop (context, _UVRSC_FPA, op, _UVRSD_FPAX)
    != _UVRSR_OK)
  return _URC_FAILURE;
       continue;
     }


   op = 0x80000 | ((op & 7) + 1);
   if (_Unwind_VRS_Pop (context, _UVRSC_VFP, op, _UVRSD_VFPX)
       != _UVRSR_OK)
     return _URC_FAILURE;
   continue;
 }
      if ((op & 0xf0) == 0xc0)
 {
   if (op == 0xc6)
     {

       op = next_unwind_byte (uws);
       op = ((op & 0xf0) << 12) | ((op & 0xf) + 1);
       if (_Unwind_VRS_Pop (context, _UVRSC_WMMXD, op, _UVRSD_UINT64)
    != _UVRSR_OK)
  return _URC_FAILURE;
       continue;
     }
   if (op == 0xc7)
     {
       op = next_unwind_byte (uws);
       if (op == 0 || (op & 0xf0) != 0)

  return _URC_FAILURE;

       if (_Unwind_VRS_Pop (context, _UVRSC_WMMXC, op, _UVRSD_UINT32)
    != _UVRSR_OK)
  return _URC_FAILURE;
       continue;
     }
   if ((op & 0xf8) == 0xc0)
     {

       op = 0xa0000 | ((op & 0xf) + 1);
       if (_Unwind_VRS_Pop (context, _UVRSC_WMMXD, op, _UVRSD_UINT64)
    != _UVRSR_OK)
  return _URC_FAILURE;
       continue;
     }
   if (op == 0xc8)
     {

       op = next_unwind_byte (uws);
       op = ((op & 0xf0) << 12) | ((op & 0xf) + 1);
       if (_Unwind_VRS_Pop (context, _UVRSC_FPA, op, _UVRSD_FPAX)
    != _UVRSR_OK)
  return _URC_FAILURE;
       continue;
     }
   if (op == 0xc9)
     {

       op = next_unwind_byte (uws);
       op = ((op & 0xf0) << 12) | ((op & 0xf) + 1);
       if (_Unwind_VRS_Pop (context, _UVRSC_VFP, op, _UVRSD_DOUBLE)
    != _UVRSR_OK)
  return _URC_FAILURE;
       continue;
     }

   return _URC_FAILURE;
 }
      if ((op & 0xf8) == 0xd0)
 {

   op = 0x80000 | ((op & 7) + 1);
   if (_Unwind_VRS_Pop (context, _UVRSC_VFP, op, _UVRSD_DOUBLE)
       != _UVRSR_OK)
     return _URC_FAILURE;
   continue;
 }

      return _URC_FAILURE;
    }
  return _URC_OK;
}
