
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CONST_VECTOR_ELT (int ,int) ;
 int GET_MODE (int ) ;
 int GET_MODE_NUNITS (int) ;
 int HImode ;
 int QImode ;
 int SImode ;
 int V16QImode ;
 int V4SImode ;
 int V8HImode ;
 int gcc_unreachable () ;
 int gen_lowpart (int ,int ) ;
 int gen_rtx_VEC_DUPLICATE (int ,int ) ;
 scalar_t__ vspltis_constant (int ,unsigned int,unsigned int) ;

rtx
gen_easy_altivec_constant (rtx op)
{
  enum machine_mode mode = GET_MODE (op);
  int nunits = GET_MODE_NUNITS (mode);
  rtx last = CONST_VECTOR_ELT (op, nunits - 1);
  unsigned step = nunits / 4;
  unsigned copies = 1;


  if (vspltis_constant (op, step, copies))
    return gen_rtx_VEC_DUPLICATE (V4SImode, gen_lowpart (SImode, last));


  if (step == 1)
    copies <<= 1;
  else
    step >>= 1;

  if (vspltis_constant (op, step, copies))
    return gen_rtx_VEC_DUPLICATE (V8HImode, gen_lowpart (HImode, last));


  if (step == 1)
    copies <<= 1;
  else
    step >>= 1;

  if (vspltis_constant (op, step, copies))
    return gen_rtx_VEC_DUPLICATE (V16QImode, gen_lowpart (QImode, last));

  gcc_unreachable ();
}
