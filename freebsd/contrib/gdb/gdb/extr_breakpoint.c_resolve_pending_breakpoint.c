
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct symtabs_and_lines {int dummy; } ;
struct symtab_and_line {int dummy; } ;
struct lang_and_radix {int radix; int lang; } ;
struct cleanup {int dummy; } ;
struct breakpoint {char* addr_string; int from_tty; int flag; int input_radix; int language; } ;
struct TYPE_2__ {int la_language; } ;


 int GDB_RC_OK ;
 int break_command_1 (char*,int ,int ,struct breakpoint*) ;
 TYPE_1__* current_language ;
 int do_cleanups (struct cleanup*) ;
 int do_restore_lang_radix_cleanup ;
 int input_radix ;
 struct cleanup* make_cleanup (int ,struct lang_and_radix*) ;
 int printf_filtered (char*,char*) ;
 int set_language (int ) ;

__attribute__((used)) static int
resolve_pending_breakpoint (struct breakpoint *b)
{


  struct symtabs_and_lines sals;
  struct symtab_and_line pending_sal;
  char **cond_string = (char **) ((void*)0);
  char *copy_arg = b->addr_string;
  char **addr_string;
  char *errmsg;
  int rc;
  int not_found = 0;
  struct ui_file *old_gdb_stderr;
  struct lang_and_radix old_lr;
  struct cleanup *old_chain;



  old_lr.lang = current_language->la_language;
  old_lr.radix = input_radix;
  old_chain = make_cleanup (do_restore_lang_radix_cleanup, &old_lr);

  set_language (b->language);
  input_radix = b->input_radix;
  rc = break_command_1 (b->addr_string, b->flag, b->from_tty, b);

  if (rc == GDB_RC_OK)

    printf_filtered ("Pending breakpoint \"%s\" resolved\n", b->addr_string);

  do_cleanups (old_chain);
  return rc;
}
