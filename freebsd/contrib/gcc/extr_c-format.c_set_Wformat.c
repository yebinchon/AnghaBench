
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int warn_format ;
 int warn_format_extra_args ;
 int warn_format_nonliteral ;
 int warn_format_security ;
 int warn_format_y2k ;
 int warn_format_zero_length ;
 int warn_nonnull ;

void
set_Wformat (int setting)
{
  warn_format = setting;
  warn_format_extra_args = setting;
  warn_format_zero_length = setting;
  if (setting != 1)
    {
      warn_format_nonliteral = setting;
      warn_format_security = setting;
      warn_format_y2k = setting;
    }

  if (setting)
    warn_nonnull = setting;
}
