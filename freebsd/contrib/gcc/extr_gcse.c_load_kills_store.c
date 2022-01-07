
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GET_MODE (int ) ;
 int anti_dependence (int ,int ) ;
 int rtx_addr_varies_p ;
 int true_dependence (int ,int ,int ,int ) ;

__attribute__((used)) static bool
load_kills_store (rtx x, rtx store_pattern, int after)
{
  if (after)
    return anti_dependence (x, store_pattern);
  else
    return true_dependence (store_pattern, GET_MODE (store_pattern), x,
       rtx_addr_varies_p);
}
