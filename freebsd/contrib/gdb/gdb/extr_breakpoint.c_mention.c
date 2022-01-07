
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ui_stream {int stream; } ;
struct cleanup {int dummy; } ;
struct breakpoint {int type; char* dll_pathname; int line_number; int * source_file; TYPE_2__* loc; int addr_string; scalar_t__ pending; int number; int exp; TYPE_1__* ops; } ;
struct TYPE_4__ {int address; } ;
struct TYPE_3__ {int (* print_mention ) (struct breakpoint*) ;} ;


 scalar_t__ addressprint ;
 int breakpoint_create_event (int ) ;
 int create_breakpoint_hook (struct breakpoint*) ;
 int do_cleanups (struct cleanup*) ;
 int gdb_stdout ;
 struct cleanup* make_cleanup_ui_out_stream_delete (struct ui_stream*) ;
 struct cleanup* make_cleanup_ui_out_tuple_begin_end (int ,char*) ;
 int print_address_numeric (int ,int,int ) ;
 int print_expression (int ,int ) ;
 int printf_filtered (char*,...) ;
 int stub1 (struct breakpoint*) ;
 int ui_out_field_int (int ,char*,int ) ;
 int ui_out_field_stream (int ,char*,struct ui_stream*) ;
 scalar_t__ ui_out_is_mi_like_p (int ) ;
 struct ui_stream* ui_out_stream_new (int ) ;
 int ui_out_text (int ,char*) ;
 int uiout ;

__attribute__((used)) static void
mention (struct breakpoint *b)
{
  int say_where = 0;
  struct cleanup *old_chain, *ui_out_chain;
  struct ui_stream *stb;

  stb = ui_out_stream_new (uiout);
  old_chain = make_cleanup_ui_out_stream_delete (stb);






  if (create_breakpoint_hook)
    create_breakpoint_hook (b);
  breakpoint_create_event (b->number);

  if (b->ops != ((void*)0) && b->ops->print_mention != ((void*)0))
    b->ops->print_mention (b);
  else
    switch (b->type)
      {
      case 137:
 printf_filtered ("(apparently deleted?) Eventpoint %d: ", b->number);
 break;
      case 129:
 ui_out_text (uiout, "Watchpoint ");
 ui_out_chain = make_cleanup_ui_out_tuple_begin_end (uiout, "wpt");
 ui_out_field_int (uiout, "number", b->number);
 ui_out_text (uiout, ": ");
 print_expression (b->exp, stb->stream);
 ui_out_field_stream (uiout, "exp", stb);
 do_cleanups (ui_out_chain);
 break;
      case 140:
 ui_out_text (uiout, "Hardware watchpoint ");
 ui_out_chain = make_cleanup_ui_out_tuple_begin_end (uiout, "wpt");
 ui_out_field_int (uiout, "number", b->number);
 ui_out_text (uiout, ": ");
 print_expression (b->exp, stb->stream);
 ui_out_field_stream (uiout, "exp", stb);
 do_cleanups (ui_out_chain);
 break;
      case 135:
 ui_out_text (uiout, "Hardware read watchpoint ");
 ui_out_chain = make_cleanup_ui_out_tuple_begin_end (uiout, "hw-rwpt");
 ui_out_field_int (uiout, "number", b->number);
 ui_out_text (uiout, ": ");
 print_expression (b->exp, stb->stream);
 ui_out_field_stream (uiout, "exp", stb);
 do_cleanups (ui_out_chain);
 break;
      case 152:
 ui_out_text (uiout, "Hardware access (read/write) watchpoint ");
 ui_out_chain = make_cleanup_ui_out_tuple_begin_end (uiout, "hw-awpt");
 ui_out_field_int (uiout, "number", b->number);
 ui_out_text (uiout, ": ");
 print_expression (b->exp, stb->stream);
 ui_out_field_stream (uiout, "exp", stb);
 do_cleanups (ui_out_chain);
 break;
      case 151:
 if (ui_out_is_mi_like_p (uiout))
   {
     say_where = 0;
     break;
   }
 printf_filtered ("Breakpoint %d", b->number);
 say_where = 1;
 break;
      case 141:
 if (ui_out_is_mi_like_p (uiout))
   {
     say_where = 0;
     break;
   }
 printf_filtered ("Hardware assisted breakpoint %d", b->number);
 say_where = 1;
 break;
      case 146:
      case 144:
 printf_filtered ("Catchpoint %d (%s %s)",
    b->number,
    (b->type == 146) ? "load" : "unload",
    (b->dll_pathname != ((void*)0)) ?
    b->dll_pathname : "<any library>");
 break;
      case 147:
      case 143:
 printf_filtered ("Catchpoint %d (%s)",
    b->number,
    (b->type == 147) ? "fork" : "vfork");
 break;
      case 148:
 printf_filtered ("Catchpoint %d (exec)",
    b->number);
 break;
      case 149:
      case 145:
 printf_filtered ("Catchpoint %d (%s)",
    b->number,
    (b->type == 149) ? "catch" : "throw");
 break;

      case 130:
      case 142:
      case 139:
      case 138:
      case 133:
      case 131:
      case 150:
      case 128:
      case 134:
      case 132:
      case 136:
 break;
      }

  if (say_where)
    {
      if (b->pending)
 {
   printf_filtered (" (%s) pending.", b->addr_string);
 }
      else
 {
   if (addressprint || b->source_file == ((void*)0))
     {
       printf_filtered (" at ");
       print_address_numeric (b->loc->address, 1, gdb_stdout);
     }
   if (b->source_file)
     printf_filtered (": file %s, line %d.",
        b->source_file, b->line_number);
 }
    }
  do_cleanups (old_chain);
  if (ui_out_is_mi_like_p (uiout))
    return;
  printf_filtered ("\n");
}
