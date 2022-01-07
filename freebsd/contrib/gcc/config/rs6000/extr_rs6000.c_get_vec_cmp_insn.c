
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;






 int INSN_NOT_AVAILABLE ;
 int TARGET_ALTIVEC ;
 int UNSPEC_VCMPEQFP ;
 int UNSPEC_VCMPEQUB ;
 int UNSPEC_VCMPEQUH ;
 int UNSPEC_VCMPEQUW ;
 int UNSPEC_VCMPGEFP ;
 int UNSPEC_VCMPGTFP ;
 int UNSPEC_VCMPGTSB ;
 int UNSPEC_VCMPGTSH ;
 int UNSPEC_VCMPGTSW ;
 int UNSPEC_VCMPGTUB ;
 int UNSPEC_VCMPGTUH ;
 int UNSPEC_VCMPGTUW ;
 int V16QImode ;
 int V4SFmode ;
 int V4SImode ;
 int V8HImode ;

__attribute__((used)) static int
get_vec_cmp_insn (enum rtx_code code,
    enum machine_mode dest_mode,
    enum machine_mode op_mode)
{
  if (!TARGET_ALTIVEC)
    return INSN_NOT_AVAILABLE;

  switch (code)
    {
    case 131:
      if (dest_mode == V16QImode && op_mode == V16QImode)
 return UNSPEC_VCMPEQUB;
      if (dest_mode == V8HImode && op_mode == V8HImode)
 return UNSPEC_VCMPEQUH;
      if (dest_mode == V4SImode && op_mode == V4SImode)
 return UNSPEC_VCMPEQUW;
      if (dest_mode == V4SImode && op_mode == V4SFmode)
 return UNSPEC_VCMPEQFP;
      break;
    case 130:
      if (dest_mode == V4SImode && op_mode == V4SFmode)
 return UNSPEC_VCMPGEFP;
    case 129:
      if (dest_mode == V16QImode && op_mode == V16QImode)
 return UNSPEC_VCMPGTSB;
      if (dest_mode == V8HImode && op_mode == V8HImode)
 return UNSPEC_VCMPGTSH;
      if (dest_mode == V4SImode && op_mode == V4SImode)
 return UNSPEC_VCMPGTSW;
      if (dest_mode == V4SImode && op_mode == V4SFmode)
 return UNSPEC_VCMPGTFP;
      break;
    case 128:
      if (dest_mode == V16QImode && op_mode == V16QImode)
 return UNSPEC_VCMPGTUB;
      if (dest_mode == V8HImode && op_mode == V8HImode)
 return UNSPEC_VCMPGTUH;
      if (dest_mode == V4SImode && op_mode == V4SImode)
 return UNSPEC_VCMPGTUW;
      break;
    default:
      break;
    }
  return INSN_NOT_AVAILABLE;
}
