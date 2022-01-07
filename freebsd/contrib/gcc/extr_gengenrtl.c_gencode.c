
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** formats ;
 int gendef (char const*) ;
 int puts (char*) ;

__attribute__((used)) static void
gencode (void)
{
  const char **fmt;

  puts ("#include \"config.h\"");
  puts ("#include \"system.h\"");
  puts ("#include \"coretypes.h\"");
  puts ("#include \"tm.h\"");
  puts ("#include \"obstack.h\"");
  puts ("#include \"rtl.h\"");
  puts ("#include \"ggc.h\"\n");

  for (fmt = formats; *fmt != 0; fmt++)
    gendef (*fmt);
}
