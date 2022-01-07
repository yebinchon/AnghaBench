
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int all_symbols ;
 int optimize_token_table () ;
 int read_map (int ) ;
 int sort_symbols () ;
 int stdin ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char symbol_prefix_char ;
 int usage () ;
 int write_src () ;

int main(int argc, char **argv)
{
 if (argc >= 2) {
  int i;
  for (i = 1; i < argc; i++) {
   if(strcmp(argv[i], "--all-symbols") == 0)
    all_symbols = 1;
   else if (strncmp(argv[i], "--symbol-prefix=", 16) == 0) {
    char *p = &argv[i][16];

    if ((*p == '"' && *(p+2) == '"') || (*p == '\'' && *(p+2) == '\''))
     p++;
    symbol_prefix_char = *p;
   } else
    usage();
  }
 } else if (argc != 1)
  usage();

 read_map(stdin);
 sort_symbols();
 optimize_token_table();
 write_src();

 return 0;
}
