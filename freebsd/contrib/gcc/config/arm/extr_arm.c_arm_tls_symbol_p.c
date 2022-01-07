
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ SYMBOL_REF_TLS_MODEL (int ) ;
 int TARGET_HAVE_TLS ;

__attribute__((used)) static bool
arm_tls_symbol_p (rtx x)
{
  if (! TARGET_HAVE_TLS)
    return 0;

  if (GET_CODE (x) != SYMBOL_REF)
    return 0;

  return SYMBOL_REF_TLS_MODEL (x) != 0;
}
