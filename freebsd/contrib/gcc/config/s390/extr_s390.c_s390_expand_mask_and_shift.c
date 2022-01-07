
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int AND ;
 int ASHIFT ;
 int GEN_INT (int ) ;
 int GET_MODE_MASK (int) ;
 int NULL_RTX ;
 int OPTAB_DIRECT ;
 int SImode ;
 int expand_simple_binop (int ,int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static inline rtx
s390_expand_mask_and_shift (rtx val, enum machine_mode mode, rtx count)
{
  val = expand_simple_binop (SImode, AND, val, GEN_INT (GET_MODE_MASK (mode)),
        NULL_RTX, 1, OPTAB_DIRECT);
  return expand_simple_binop (SImode, ASHIFT, val, count,
         NULL_RTX, 1, OPTAB_DIRECT);
}
