
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLK_CXX98 ;
 int CLK_GNUCXX ;
 int cpp_set_lang (int ,int ) ;
 int flag_iso ;
 int flag_no_gnu_keywords ;
 int flag_no_nonansi_builtin ;
 int parse_in ;

__attribute__((used)) static void
set_std_cxx98 (int iso)
{
  cpp_set_lang (parse_in, iso ? CLK_CXX98: CLK_GNUCXX);
  flag_no_gnu_keywords = iso;
  flag_no_nonansi_builtin = iso;
  flag_iso = iso;
}
