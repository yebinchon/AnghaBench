
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct security_mnt_opts {int num_mnt_opts; char** mnt_opts; int* mnt_opts_flags; } ;


 int BUG () ;

 char* CONTEXT_STR ;

 char* DEFCONTEXT_STR ;

 char* FSCONTEXT_STR ;
 char* LABELSUPP_STR ;

 char* ROOTCONTEXT_STR ;

 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void selinux_write_opts(struct seq_file *m,
          struct security_mnt_opts *opts)
{
 int i;
 char *prefix;

 for (i = 0; i < opts->num_mnt_opts; i++) {
  char *has_comma;

  if (opts->mnt_opts[i])
   has_comma = strchr(opts->mnt_opts[i], ',');
  else
   has_comma = ((void*)0);

  switch (opts->mnt_opts_flags[i]) {
  case 132:
   prefix = CONTEXT_STR;
   break;
  case 130:
   prefix = FSCONTEXT_STR;
   break;
  case 129:
   prefix = ROOTCONTEXT_STR;
   break;
  case 131:
   prefix = DEFCONTEXT_STR;
   break;
  case 128:
   seq_putc(m, ',');
   seq_puts(m, LABELSUPP_STR);
   continue;
  default:
   BUG();
  };

  seq_putc(m, ',');
  seq_puts(m, prefix);
  if (has_comma)
   seq_putc(m, '\"');
  seq_puts(m, opts->mnt_opts[i]);
  if (has_comma)
   seq_putc(m, '\"');
 }
}
