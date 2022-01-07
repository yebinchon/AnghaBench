
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int format; } ;


 unsigned int NUM_RTX_CODE ;
 TYPE_1__* defs ;
 char** formats ;
 int gendecl (char const*) ;
 int genmacro (unsigned int) ;
 int putchar (char) ;
 int puts (char*) ;
 int special_format (int ) ;

__attribute__((used)) static void
genheader (void)
{
  unsigned int i;
  const char **fmt;

  puts ("#ifndef GCC_GENRTL_H");
  puts ("#define GCC_GENRTL_H\n");

  for (fmt = formats; *fmt; ++fmt)
    gendecl (*fmt);

  putchar ('\n');

  for (i = 0; i < NUM_RTX_CODE; i++)
    if (! special_format (defs[i].format))
      genmacro (i);

  puts ("\n#endif /* GCC_GENRTL_H */");
}
