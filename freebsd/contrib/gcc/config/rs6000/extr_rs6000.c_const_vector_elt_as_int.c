
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 int CONST_VECTOR_ELT (int ,unsigned int) ;
 scalar_t__ GET_MODE (int ) ;
 int INTVAL (int ) ;
 int SImode ;
 scalar_t__ V2SFmode ;
 scalar_t__ V4SFmode ;
 int gen_lowpart (int ,int ) ;

__attribute__((used)) static HOST_WIDE_INT
const_vector_elt_as_int (rtx op, unsigned int elt)
{
  rtx tmp = CONST_VECTOR_ELT (op, elt);
  if (GET_MODE (op) == V4SFmode
      || GET_MODE (op) == V2SFmode)
    tmp = gen_lowpart (SImode, tmp);
  return INTVAL (tmp);
}
