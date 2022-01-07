
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IT_dar_CODE ;
 int IT_dds_CODE ;
 int IT_den_CODE ;
 int IT_dfp_CODE ;
 int IT_dot_CODE ;
 int IT_dpp_CODE ;
 int IT_dpt_CODE ;
 int IT_dse_CODE ;
 int IT_dul_CODE ;
 int dump_symbol_info () ;
 int must (int ) ;
 scalar_t__ opt (int ) ;
 int tab (int,char*) ;

__attribute__((used)) static void
derived_type (void)
{
  tab (1, "DERIVED TYPE");

  while (1)
    {
      if (opt (IT_dpp_CODE))
 {
   dump_symbol_info ();
   must (IT_dpp_CODE);
 }
      else if (opt (IT_dfp_CODE))
 {
   dump_symbol_info ();
   must (IT_dfp_CODE);
 }
      else if (opt (IT_den_CODE))
 {
   dump_symbol_info ();
   must (IT_den_CODE);
 }
      else if (opt (IT_den_CODE))
 {
   dump_symbol_info ();
   must (IT_den_CODE);
 }
      else if (opt (IT_dds_CODE))
 {
   dump_symbol_info ();
   must (IT_dds_CODE);
 }
      else if (opt (IT_dar_CODE))
 {
 }
      else if (opt (IT_dpt_CODE))
 {
 }
      else if (opt (IT_dul_CODE))
 {
 }
      else if (opt (IT_dse_CODE))
 {
 }
      else if (opt (IT_dot_CODE))
 {
 }
      else
 break;
    }

  tab (-1, "");
}
