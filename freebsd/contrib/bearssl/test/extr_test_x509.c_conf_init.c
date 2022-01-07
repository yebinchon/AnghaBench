
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int SB_new () ;
 int * conf ;
 int conf_delayed_char ;
 int conf_linenum ;
 int exit (int ) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 int line_builder ;
 int stderr ;

__attribute__((used)) static void
conf_init(const char *fname)
{
 conf = fopen(fname, "r");
 if (conf == ((void*)0)) {
  fprintf(stderr, "could not open file '%s'\n", fname);
  exit(EXIT_FAILURE);
 }
 conf_delayed_char = -1;
 conf_linenum = 1;
 line_builder = SB_new();
}
