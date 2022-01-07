
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLK_GNUC99 ;
 int CLK_STDC99 ;
 int cpp_set_lang (int ,int ) ;
 int flag_iso ;
 int flag_isoc94 ;
 int flag_isoc99 ;
 int flag_no_asm ;
 int flag_no_nonansi_builtin ;
 int parse_in ;

__attribute__((used)) static void
set_std_c99 (int iso)
{
  cpp_set_lang (parse_in, iso ? CLK_STDC99: CLK_GNUC99);
  flag_no_asm = iso;
  flag_no_nonansi_builtin = iso;
  flag_iso = iso;
  flag_isoc99 = 1;
  flag_isoc94 = 1;
}
