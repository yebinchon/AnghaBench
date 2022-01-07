
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct dummy_frame {int call_hi; int call_lo; int id; int top; int sp; int fp; int pc; struct dummy_frame* next; } ;


 struct dummy_frame* dummy_frame_stack ;
 int fprint_frame_id (struct ui_file*,int ) ;
 int fprintf_unfiltered (struct ui_file*,char*,...) ;
 int gdb_print_host_address (struct dummy_frame*,struct ui_file*) ;
 int paddr (int ) ;

__attribute__((used)) static void
fprint_dummy_frames (struct ui_file *file)
{
  struct dummy_frame *s;
  for (s = dummy_frame_stack; s != ((void*)0); s = s->next)
    {
      gdb_print_host_address (s, file);
      fprintf_unfiltered (file, ":");
      fprintf_unfiltered (file, " pc=0x%s", paddr (s->pc));
      fprintf_unfiltered (file, " fp=0x%s", paddr (s->fp));
      fprintf_unfiltered (file, " sp=0x%s", paddr (s->sp));
      fprintf_unfiltered (file, " top=0x%s", paddr (s->top));
      fprintf_unfiltered (file, " id=");
      fprint_frame_id (file, s->id);
      fprintf_unfiltered (file, " call_lo=0x%s", paddr (s->call_lo));
      fprintf_unfiltered (file, " call_hi=0x%s", paddr (s->call_hi));
      fprintf_unfiltered (file, "\n");
    }
}
