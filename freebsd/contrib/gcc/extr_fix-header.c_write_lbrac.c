
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int outf ;
 scalar_t__ partial_count ;

__attribute__((used)) static void
write_lbrac (void)
{
  if (partial_count)
    {
      fprintf (outf, "#ifndef _PARAMS\n");
      fprintf (outf, "#if defined(__STDC__) || defined(__cplusplus)\n");
      fprintf (outf, "#define _PARAMS(ARGS) ARGS\n");
      fprintf (outf, "#else\n");
      fprintf (outf, "#define _PARAMS(ARGS) ()\n");
      fprintf (outf, "#endif\n#endif /* _PARAMS */\n");
    }
}
