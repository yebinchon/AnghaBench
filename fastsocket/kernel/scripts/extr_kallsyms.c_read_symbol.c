
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_entry {char* sym; scalar_t__ len; int addr; } ;
typedef int FILE ;


 int EOF ;
 int EXIT_FAILURE ;
 int _text ;
 int exit (int ) ;
 int fgets (char*,int,int *) ;
 int fprintf (int ,char*) ;
 int fscanf (int *,char*,int *,char*,char*) ;
 scalar_t__ is_arm_mapping_symbol (char*) ;
 char* malloc (scalar_t__) ;
 scalar_t__ read_symbol_tr (char*,int ) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 char symbol_prefix_char ;
 unsigned char toupper (char) ;

__attribute__((used)) static int read_symbol(FILE *in, struct sym_entry *s)
{
 char str[500];
 char *sym, stype;
 int rc;

 rc = fscanf(in, "%llx %c %499s\n", &s->addr, &stype, str);
 if (rc != 3) {
  if (rc != EOF) {

   fgets(str, 500, in);
  }
  return -1;
 }

 sym = str;

 if (symbol_prefix_char && str[0] == symbol_prefix_char)
  sym++;


 if (strcmp(sym, "_text") == 0)
  _text = s->addr;
 else if (read_symbol_tr(sym, s->addr) == 0)
                     ;
 else if (toupper(stype) == 'A')
 {

  if (strcmp(sym, "__kernel_syscall_via_break") &&
      strcmp(sym, "__kernel_syscall_via_epc") &&
      strcmp(sym, "__kernel_sigtramp") &&
      strcmp(sym, "__gp"))
   return -1;

 }
 else if (toupper(stype) == 'U' ||
   is_arm_mapping_symbol(sym))
  return -1;

 else if (str[0] == '$')
  return -1;

 else if (stype == 'N')
  return -1;



 s->len = strlen(str) + 1;
 s->sym = malloc(s->len + 1);
 if (!s->sym) {
  fprintf(stderr, "kallsyms failure: "
   "unable to allocate required amount of memory\n");
  exit(EXIT_FAILURE);
 }
 strcpy((char *)s->sym + 1, str);
 s->sym[0] = stype;

 return 0;
}
