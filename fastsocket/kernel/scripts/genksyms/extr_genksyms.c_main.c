
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {size_t type; char* name; struct symbol* visited; int defn; scalar_t__ is_extern; scalar_t__ is_override; } ;
struct option {char* member_0; int member_1; char member_3; int member_2; } ;
typedef int FILE ;


 int EOF ;
 int HASH_BUCKETS ;
 size_t SYM_NORMAL ;
 int arch ;
 int * debugfile ;
 scalar_t__ errors ;
 int flag_debug ;
 int flag_dump_defs ;
 int flag_dump_types ;
 int flag_preserve ;
 int flag_reference ;
 int flag_warnings ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,int,int,double) ;
 int fputs (char*,int *) ;
 int genksyms_usage () ;
 int getopt (int,char**,char*) ;
 int getopt_long (int,char**,char*,struct option*,int *) ;
 char* mod_prefix ;
 int nsyms ;
 int optarg ;
 int perror (int ) ;
 int print_list (int *,int ) ;
 int putc (char,int *) ;
 int read_reference (int *) ;
 int * stderr ;
 scalar_t__ strcmp (int ,char*) ;
 char** symbol_type_name ;
 struct symbol* visited_symbols ;
 int yyparse () ;

int main(int argc, char **argv)
{
 FILE *dumpfile = ((void*)0), *ref_file = ((void*)0);
 int o;
 while ((o = getopt(argc, argv, "a:dwqVDr:T:ph")) != EOF)

  switch (o) {
  case 'a':
   arch = optarg;
   break;
  case 'd':
   flag_debug++;
   break;
  case 'w':
   flag_warnings = 1;
   break;
  case 'q':
   flag_warnings = 0;
   break;
  case 'V':
   fputs("genksyms version 2.5.60\n", stderr);
   break;
  case 'D':
   flag_dump_defs = 1;
   break;
  case 'r':
   flag_reference = 1;
   ref_file = fopen(optarg, "r");
   if (!ref_file) {
    perror(optarg);
    return 1;
   }
   break;
  case 'T':
   flag_dump_types = 1;
   dumpfile = fopen(optarg, "w");
   if (!dumpfile) {
    perror(optarg);
    return 1;
   }
   break;
  case 'p':
   flag_preserve = 1;
   break;
  case 'h':
   genksyms_usage();
   return 0;
  default:
   genksyms_usage();
   return 1;
  }
 if ((strcmp(arch, "h8300") == 0) || (strcmp(arch, "blackfin") == 0))
  mod_prefix = "_";
 {
  extern int yydebug;
  extern int yy_flex_debug;

  yydebug = (flag_debug > 1);
  yy_flex_debug = (flag_debug > 2);

  debugfile = stderr;

 }

 if (flag_reference)
  read_reference(ref_file);

 yyparse();

 if (flag_dump_types && visited_symbols) {
  while (visited_symbols != (struct symbol *)-1L) {
   struct symbol *sym = visited_symbols;

   if (sym->is_override)
    fputs("override ", dumpfile);
   if (sym->type != SYM_NORMAL) {
    putc(symbol_type_name[sym->type][0], dumpfile);
    putc('#', dumpfile);
   }
   fputs(sym->name, dumpfile);
   putc(' ', dumpfile);
   if (sym->is_extern)
    fputs("extern ", dumpfile);
   print_list(dumpfile, sym->defn);
   putc('\n', dumpfile);

   visited_symbols = sym->visited;
   sym->visited = ((void*)0);
  }
 }

 if (flag_debug) {
  fprintf(debugfile, "Hash table occupancy %d/%d = %g\n",
   nsyms, HASH_BUCKETS,
   (double)nsyms / (double)HASH_BUCKETS);
 }

 return errors != 0;
}
