
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 char* c_target_char_has_backslash_escape (int) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fputs_filtered (char*,struct ui_file*) ;
 scalar_t__ host_char_print_literally (int) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ target_char_to_host (int,int*) ;

__attribute__((used)) static void
c_emit_char (int c, struct ui_file *stream, int quoter)
{
  const char *escape;
  int host_char;

  c &= 0xFF;

  escape = c_target_char_has_backslash_escape (c);
  if (escape)
    {
      if (quoter == '"' && strcmp (escape, "0") == 0)


 fprintf_filtered (stream, "\\000");
      else
 fprintf_filtered (stream, "\\%s", escape);
    }
  else if (target_char_to_host (c, &host_char)
           && host_char_print_literally (host_char))
    {
      if (host_char == '\\' || host_char == quoter)
        fputs_filtered ("\\", stream);
      fprintf_filtered (stream, "%c", host_char);
    }
  else
    fprintf_filtered (stream, "\\%.3o", (unsigned int) c);
}
