
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmdnames {unsigned int cnt; TYPE_1__** names; } ;
struct TYPE_2__ {unsigned int len; } ;


 int mput_char (char,scalar_t__) ;
 char* perf_exec_path () ;
 int pretty_print_string_list (struct cmdnames*,unsigned int) ;
 int printf (char*,...) ;
 int putchar (char) ;
 scalar_t__ strlen (char const*) ;

void list_commands(const char *title, struct cmdnames *main_cmds,
     struct cmdnames *other_cmds)
{
 unsigned int i, longest = 0;

 for (i = 0; i < main_cmds->cnt; i++)
  if (longest < main_cmds->names[i]->len)
   longest = main_cmds->names[i]->len;
 for (i = 0; i < other_cmds->cnt; i++)
  if (longest < other_cmds->names[i]->len)
   longest = other_cmds->names[i]->len;

 if (main_cmds->cnt) {
  const char *exec_path = perf_exec_path();
  printf("available %s in '%s'\n", title, exec_path);
  printf("----------------");
  mput_char('-', strlen(title) + strlen(exec_path));
  putchar('\n');
  pretty_print_string_list(main_cmds, longest);
  putchar('\n');
 }

 if (other_cmds->cnt) {
  printf("%s available from elsewhere on your $PATH\n", title);
  printf("---------------------------------------");
  mput_char('-', strlen(title));
  putchar('\n');
  pretty_print_string_list(other_cmds, longest);
  putchar('\n');
 }
}
