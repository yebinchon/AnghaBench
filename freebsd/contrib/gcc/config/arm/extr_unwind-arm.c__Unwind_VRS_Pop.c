
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfp_regs {int * d; } ;
struct TYPE_3__ {int* r; } ;
struct TYPE_4__ {int demand_save_flags; TYPE_1__ core; struct vfp_regs vfp; } ;
typedef TYPE_2__ phase1_vrs ;
typedef int _uw ;
typedef int _Unwind_VRS_Result ;
typedef int _Unwind_VRS_RegClass ;
typedef int _Unwind_VRS_DataRepresentation ;
typedef int _Unwind_Context ;


 int DEMAND_SAVE_VFP ;
 size_t R_SP ;





 int _UVRSD_DOUBLE ;
 int _UVRSD_UINT32 ;
 int _UVRSD_VFPX ;
 int _UVRSR_FAILED ;
 int _UVRSR_NOT_IMPLEMENTED ;
 int _UVRSR_OK ;
 int __gnu_Unwind_Restore_VFP (struct vfp_regs*) ;
 int __gnu_Unwind_Save_VFP (struct vfp_regs*) ;

_Unwind_VRS_Result _Unwind_VRS_Pop (_Unwind_Context *context,
        _Unwind_VRS_RegClass regclass,
        _uw discriminator,
        _Unwind_VRS_DataRepresentation representation)
{
  phase1_vrs *vrs = (phase1_vrs *) context;

  switch (regclass)
    {
    case 132:
      {
 _uw *ptr;
 _uw mask;
 int i;

 if (representation != _UVRSD_UINT32)
   return _UVRSR_FAILED;

 mask = discriminator & 0xffff;
 ptr = (_uw *) vrs->core.r[R_SP];

 for (i = 0; i < 16; i++)
   {
     if (mask & (1 << i))
       vrs->core.r[i] = *(ptr++);
   }

 if ((mask & (1 << R_SP)) == 0)
   vrs->core.r[R_SP] = (_uw) ptr;
      }
      return _UVRSR_OK;

    case 130:
      {
 _uw start = discriminator >> 16;
 _uw count = discriminator & 0xffff;
 struct vfp_regs tmp;
 _uw *sp;
 _uw *dest;

 if ((representation != _UVRSD_VFPX && representation != _UVRSD_DOUBLE)
     || start + count > 16)
   return _UVRSR_FAILED;

 if (vrs->demand_save_flags & DEMAND_SAVE_VFP)
   {

     vrs->demand_save_flags &= ~DEMAND_SAVE_VFP;
     __gnu_Unwind_Save_VFP (&vrs->vfp);
   }





 __gnu_Unwind_Save_VFP (&tmp);



 sp = (_uw *) vrs->core.r[R_SP];
 dest = (_uw *) &tmp.d[start];
 count *= 2;
 while (count--)
   *(dest++) = *(sp++);


 if (representation == _UVRSD_VFPX)
   sp++;


 vrs->core.r[R_SP] = (_uw) sp;


 __gnu_Unwind_Restore_VFP (&tmp);
      }
      return _UVRSR_OK;

    case 131:
    case 128:
    case 129:
      return _UVRSR_NOT_IMPLEMENTED;

    default:
      return _UVRSR_FAILED;
    }
}
