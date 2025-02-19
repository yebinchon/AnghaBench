
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLK_GNUC89 ;
 int CLK_STDC89 ;
 int CLK_STDC94 ;
 int cpp_set_lang (int ,int ) ;
 int flag_iso ;
 int flag_isoc94 ;
 scalar_t__ flag_isoc99 ;
 int flag_no_asm ;
 int flag_no_gnu_keywords ;
 int flag_no_nonansi_builtin ;
 int parse_in ;

__attribute__((used)) static void
set_std_c89 (int c94, int iso)
{
  cpp_set_lang (parse_in, c94 ? CLK_STDC94: iso ? CLK_STDC89: CLK_GNUC89);
  flag_iso = iso;
  flag_no_asm = iso;
  flag_no_gnu_keywords = iso;
  flag_no_nonansi_builtin = iso;
  flag_isoc94 = c94;
  flag_isoc99 = 0;
}
