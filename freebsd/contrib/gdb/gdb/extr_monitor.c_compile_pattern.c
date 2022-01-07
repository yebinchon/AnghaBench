
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_pattern_buffer {char* fastmap; } ;


 int RE_SYNTAX_EMACS ;
 int error (char*,char*,char const*) ;
 int re_compile_fastmap (struct re_pattern_buffer*) ;
 char* re_compile_pattern (char*,int ,struct re_pattern_buffer*) ;
 int re_set_syntax (int) ;
 int strlen (char*) ;

__attribute__((used)) static void
compile_pattern (char *pattern, struct re_pattern_buffer *compiled_pattern,
   char *fastmap)
{
  int tmp;
  const char *val;

  compiled_pattern->fastmap = fastmap;

  tmp = re_set_syntax (RE_SYNTAX_EMACS);
  val = re_compile_pattern (pattern,
       strlen (pattern),
       compiled_pattern);
  re_set_syntax (tmp);

  if (val)
    error ("compile_pattern: Can't compile pattern string `%s': %s!", pattern, val);

  if (fastmap)
    re_compile_fastmap (compiled_pattern);
}
