
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pst_syms_array ;
 scalar_t__ pst_syms_count ;
 scalar_t__ pst_syms_size ;
 int xfree (scalar_t__) ;

__attribute__((used)) static void
clear_pst_syms (void)
{
  pst_syms_count = 0;
  pst_syms_size = 0;
  xfree (pst_syms_array);
  pst_syms_array = 0;
}
