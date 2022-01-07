
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* r; } ;
struct TYPE_4__ {TYPE_1__ core; } ;
typedef TYPE_2__ phase1_vrs ;
typedef int _uw ;
typedef int _Unwind_VRS_Result ;
typedef int _Unwind_VRS_RegClass ;
typedef int _Unwind_VRS_DataRepresentation ;
typedef int _Unwind_Context ;







 int _UVRSD_UINT32 ;
 int _UVRSR_FAILED ;
 int _UVRSR_NOT_IMPLEMENTED ;
 int _UVRSR_OK ;

_Unwind_VRS_Result _Unwind_VRS_Set (_Unwind_Context *context,
        _Unwind_VRS_RegClass regclass,
        _uw regno,
        _Unwind_VRS_DataRepresentation representation,
        void *valuep)
{
  phase1_vrs *vrs = (phase1_vrs *) context;

  switch (regclass)
    {
    case 132:
      if (representation != _UVRSD_UINT32
   || regno > 15)
 return _UVRSR_FAILED;

      vrs->core.r[regno] = *(_uw *) valuep;
      return _UVRSR_OK;

    case 130:
    case 131:
    case 128:
    case 129:
      return _UVRSR_NOT_IMPLEMENTED;

    default:
      return _UVRSR_FAILED;
    }
}
