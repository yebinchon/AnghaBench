
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int TARGET_HAVE_TLS ;
 int for_each_rtx (int *,int *,int ) ;
 int sparc_tls_symbol_ref_1 ;

bool
sparc_tls_referenced_p (rtx x)
{
  if (!TARGET_HAVE_TLS)
    return 0;

  return for_each_rtx (&x, &sparc_tls_symbol_ref_1, 0);
}
