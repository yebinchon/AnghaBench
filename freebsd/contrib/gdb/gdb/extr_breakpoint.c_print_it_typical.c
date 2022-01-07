
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ui_stream {int stream; } ;
struct cleanup {int dummy; } ;
typedef enum print_stop_action { ____Placeholder_print_stop_action } print_stop_action ;
typedef TYPE_2__* bpstat ;
struct TYPE_7__ {int type; int * val; int number; int exec_pathname; int forked_inferior_pid; int triggered_dll_pathname; TYPE_1__* loc; } ;
struct TYPE_6__ {TYPE_4__* breakpoint_at; int * old_val; } ;
struct TYPE_5__ {int address; int requested_address; } ;


 int CURRENT_EXCEPTION_CATCH_FILE ;
 int CURRENT_EXCEPTION_CATCH_LINE ;
 int CURRENT_EXCEPTION_CATCH_PC ;
 int CURRENT_EXCEPTION_KIND ;
 int CURRENT_EXCEPTION_THROW_FILE ;
 int CURRENT_EXCEPTION_THROW_LINE ;
 int CURRENT_EXCEPTION_THROW_PC ;
 int EX_EVENT_CATCH ;
 int EX_EVENT_THROW ;
 int PRINT_NOTHING ;
 int PRINT_SRC_AND_LOC ;
 int PRINT_SRC_ONLY ;
 int PRINT_UNKNOWN ;
 int Val_pretty_default ;
 int annotate_breakpoint (int ) ;
 int annotate_catchpoint (int ) ;
 int annotate_watchpoint (int ) ;
 int breakpoint_adjustment_warning (int ,int ,int ,int) ;
 int current_exception_event ;
 int do_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup_ui_out_stream_delete (struct ui_stream*) ;
 struct cleanup* make_cleanup_ui_out_tuple_begin_end (int ,char*) ;
 int mention (TYPE_4__*) ;
 int printf_filtered (char*,...) ;
 int ui_out_field_int (int ,char*,int ) ;
 int ui_out_field_stream (int ,char*,struct ui_stream*) ;
 int ui_out_field_string (int ,char*,char*) ;
 int ui_out_is_mi_like_p (int ) ;
 struct ui_stream* ui_out_stream_new (int ) ;
 int ui_out_text (int ,char*) ;
 int uiout ;
 int value_free (int *) ;
 int value_print (int *,int ,int ,int ) ;

__attribute__((used)) static enum print_stop_action
print_it_typical (bpstat bs)
{
  struct cleanup *old_chain, *ui_out_chain;
  struct ui_stream *stb;
  stb = ui_out_stream_new (uiout);
  old_chain = make_cleanup_ui_out_stream_delete (stb);


  if (bs->breakpoint_at == ((void*)0))
    return PRINT_UNKNOWN;

  switch (bs->breakpoint_at->type)
    {
    case 151:
    case 141:
      if (bs->breakpoint_at->loc->address != bs->breakpoint_at->loc->requested_address)
 breakpoint_adjustment_warning (bs->breakpoint_at->loc->requested_address,
                                bs->breakpoint_at->loc->address,
           bs->breakpoint_at->number, 1);
      annotate_breakpoint (bs->breakpoint_at->number);
      ui_out_text (uiout, "\nBreakpoint ");
      if (ui_out_is_mi_like_p (uiout))
 ui_out_field_string (uiout, "reason", "breakpoint-hit");
      ui_out_field_int (uiout, "bkptno", bs->breakpoint_at->number);
      ui_out_text (uiout, ", ");
      return PRINT_SRC_AND_LOC;
      break;

    case 134:



      printf_filtered ("Stopped due to shared library event\n");
      return PRINT_NOTHING;
      break;

    case 132:


      printf_filtered ("Thread Event Breakpoint: gdb should not stop!\n");
      return PRINT_NOTHING;
      break;

    case 136:

      printf_filtered ("Overlay Event Breakpoint: gdb should not stop!\n");
      return PRINT_NOTHING;
      break;

    case 146:
      annotate_catchpoint (bs->breakpoint_at->number);
      printf_filtered ("\nCatchpoint %d (", bs->breakpoint_at->number);
      printf_filtered ("loaded");
      printf_filtered (" %s), ", bs->breakpoint_at->triggered_dll_pathname);
      return PRINT_SRC_AND_LOC;
      break;

    case 144:
      annotate_catchpoint (bs->breakpoint_at->number);
      printf_filtered ("\nCatchpoint %d (", bs->breakpoint_at->number);
      printf_filtered ("unloaded");
      printf_filtered (" %s), ", bs->breakpoint_at->triggered_dll_pathname);
      return PRINT_SRC_AND_LOC;
      break;

    case 147:
      annotate_catchpoint (bs->breakpoint_at->number);
      printf_filtered ("\nCatchpoint %d (", bs->breakpoint_at->number);
      printf_filtered ("forked");
      printf_filtered (" process %d), ",
         bs->breakpoint_at->forked_inferior_pid);
      return PRINT_SRC_AND_LOC;
      break;

    case 143:
      annotate_catchpoint (bs->breakpoint_at->number);
      printf_filtered ("\nCatchpoint %d (", bs->breakpoint_at->number);
      printf_filtered ("vforked");
      printf_filtered (" process %d), ",
         bs->breakpoint_at->forked_inferior_pid);
      return PRINT_SRC_AND_LOC;
      break;

    case 148:
      annotate_catchpoint (bs->breakpoint_at->number);
      printf_filtered ("\nCatchpoint %d (exec'd %s), ",
         bs->breakpoint_at->number,
         bs->breakpoint_at->exec_pathname);
      return PRINT_SRC_AND_LOC;
      break;

    case 149:
      if (current_exception_event &&
   (CURRENT_EXCEPTION_KIND == EX_EVENT_CATCH))
 {
   annotate_catchpoint (bs->breakpoint_at->number);
   printf_filtered ("\nCatchpoint %d (exception caught), ",
      bs->breakpoint_at->number);
   printf_filtered ("throw location ");
   if (CURRENT_EXCEPTION_THROW_PC && CURRENT_EXCEPTION_THROW_LINE)
     printf_filtered ("%s:%d",
        CURRENT_EXCEPTION_THROW_FILE,
        CURRENT_EXCEPTION_THROW_LINE);
   else
     printf_filtered ("unknown");

   printf_filtered (", catch location ");
   if (CURRENT_EXCEPTION_CATCH_PC && CURRENT_EXCEPTION_CATCH_LINE)
     printf_filtered ("%s:%d",
        CURRENT_EXCEPTION_CATCH_FILE,
        CURRENT_EXCEPTION_CATCH_LINE);
   else
     printf_filtered ("unknown");

   printf_filtered ("\n");

   return PRINT_SRC_ONLY;
 }
      else
 {

   return PRINT_UNKNOWN;
 }
      break;

    case 145:
      if (current_exception_event &&
   (CURRENT_EXCEPTION_KIND == EX_EVENT_THROW))
 {
   annotate_catchpoint (bs->breakpoint_at->number);
   printf_filtered ("\nCatchpoint %d (exception thrown), ",
      bs->breakpoint_at->number);
   printf_filtered ("throw location ");
   if (CURRENT_EXCEPTION_THROW_PC && CURRENT_EXCEPTION_THROW_LINE)
     printf_filtered ("%s:%d",
        CURRENT_EXCEPTION_THROW_FILE,
        CURRENT_EXCEPTION_THROW_LINE);
   else
     printf_filtered ("unknown");

   printf_filtered (", catch location ");
   if (CURRENT_EXCEPTION_CATCH_PC && CURRENT_EXCEPTION_CATCH_LINE)
     printf_filtered ("%s:%d",
        CURRENT_EXCEPTION_CATCH_FILE,
        CURRENT_EXCEPTION_CATCH_LINE);
   else
     printf_filtered ("unknown");

   printf_filtered ("\n");

   return PRINT_SRC_ONLY;
 }
      else
 {

   return PRINT_UNKNOWN;
 }
      break;

    case 129:
    case 140:
      if (bs->old_val != ((void*)0))
 {
   annotate_watchpoint (bs->breakpoint_at->number);
   if (ui_out_is_mi_like_p (uiout))
     ui_out_field_string (uiout, "reason", "watchpoint-trigger");
   mention (bs->breakpoint_at);
   ui_out_chain = make_cleanup_ui_out_tuple_begin_end (uiout, "value");
   ui_out_text (uiout, "\nOld value = ");
   value_print (bs->old_val, stb->stream, 0, Val_pretty_default);
   ui_out_field_stream (uiout, "old", stb);
   ui_out_text (uiout, "\nNew value = ");
   value_print (bs->breakpoint_at->val, stb->stream, 0, Val_pretty_default);
   ui_out_field_stream (uiout, "new", stb);
   do_cleanups (ui_out_chain);
   ui_out_text (uiout, "\n");
   value_free (bs->old_val);
   bs->old_val = ((void*)0);
 }

      return PRINT_UNKNOWN;
      break;

    case 135:
      if (ui_out_is_mi_like_p (uiout))
 ui_out_field_string (uiout, "reason", "read-watchpoint-trigger");
      mention (bs->breakpoint_at);
      ui_out_chain = make_cleanup_ui_out_tuple_begin_end (uiout, "value");
      ui_out_text (uiout, "\nValue = ");
      value_print (bs->breakpoint_at->val, stb->stream, 0, Val_pretty_default);
      ui_out_field_stream (uiout, "value", stb);
      do_cleanups (ui_out_chain);
      ui_out_text (uiout, "\n");
      return PRINT_UNKNOWN;
      break;

    case 152:
      if (bs->old_val != ((void*)0))
 {
   annotate_watchpoint (bs->breakpoint_at->number);
   if (ui_out_is_mi_like_p (uiout))
     ui_out_field_string (uiout, "reason", "access-watchpoint-trigger");
   mention (bs->breakpoint_at);
   ui_out_chain = make_cleanup_ui_out_tuple_begin_end (uiout, "value");
   ui_out_text (uiout, "\nOld value = ");
   value_print (bs->old_val, stb->stream, 0, Val_pretty_default);
   ui_out_field_stream (uiout, "old", stb);
   value_free (bs->old_val);
   bs->old_val = ((void*)0);
   ui_out_text (uiout, "\nNew value = ");
 }
      else
 {
   mention (bs->breakpoint_at);
   if (ui_out_is_mi_like_p (uiout))
     ui_out_field_string (uiout, "reason", "access-watchpoint-trigger");
   ui_out_chain = make_cleanup_ui_out_tuple_begin_end (uiout, "value");
   ui_out_text (uiout, "\nValue = ");
 }
      value_print (bs->breakpoint_at->val, stb->stream, 0,Val_pretty_default);
      ui_out_field_stream (uiout, "new", stb);
      do_cleanups (ui_out_chain);
      ui_out_text (uiout, "\n");
      return PRINT_UNKNOWN;
      break;




    case 142:
      if (ui_out_is_mi_like_p (uiout))
 ui_out_field_string (uiout, "reason", "function-finished");
      return PRINT_UNKNOWN;
      break;

    case 130:
      if (ui_out_is_mi_like_p (uiout))
 ui_out_field_string (uiout, "reason", "location-reached");
      return PRINT_UNKNOWN;
      break;

    case 137:
    case 139:
    case 138:
    case 133:
    case 131:
    case 128:
    case 150:
    default:
      return PRINT_UNKNOWN;
    }
}
