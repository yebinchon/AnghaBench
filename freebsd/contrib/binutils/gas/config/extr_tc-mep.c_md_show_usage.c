
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;
typedef int FILE ;


 char* _ (char*) ;
 int fprintf (int *,char*,...) ;
 TYPE_1__* mep_config_map ;

void
md_show_usage (FILE *stream)
{
  fprintf (stream, _("MeP specific command line options:\n  -EB                     assemble for a big endian system (default)\n  -EL                     assemble for a little endian system\n  -mconfig=<name>         specify a chip configuration to use\n  -maverage -mno-average -mmult -mno-mult -mdiv -mno-div\n  -mbitops -mno-bitops -mleadz -mno-leadz -mabsdiff -mno-absdiff\n  -mminmax -mno-minmax -mclip -mno-clip -msatur -mno-satur -mcop32\n                          enable/disable the given opcodes\n\n  If -mconfig is given, the other -m options modify it.  Otherwise,\n  if no -m options are given, all core opcodes are enabled;\n  if any enabling -m options are given, only those are enabled;\n  if only disabling -m options are given, only those are disabled.\n"));
  if (mep_config_map[1].name)
    {
      int i;
      fprintf (stream, "  -mconfig=STR            specify the configuration to use\n");
      fprintf (stream, "  Configurations:");
      for (i=0; mep_config_map[i].name; i++)
 fprintf (stream, " %s", mep_config_map[i].name);
      fprintf (stream, "\n");
    }
}
