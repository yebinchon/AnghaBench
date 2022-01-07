
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int hashval_t ;


 int CONST_DOUBLE_HIGH (int ) ;
 int CONST_DOUBLE_LOW (int ) ;
 int CONST_DOUBLE_REAL_VALUE (int ) ;
 int GET_MODE (int ) ;
 int VOIDmode ;
 int real_hash (int ) ;

__attribute__((used)) static hashval_t
const_double_htab_hash (const void *x)
{
  rtx value = (rtx) x;
  hashval_t h;

  if (GET_MODE (value) == VOIDmode)
    h = CONST_DOUBLE_LOW (value) ^ CONST_DOUBLE_HIGH (value);
  else
    {
      h = real_hash (CONST_DOUBLE_REAL_VALUE (value));

      h ^= GET_MODE (value);
    }
  return h;
}
