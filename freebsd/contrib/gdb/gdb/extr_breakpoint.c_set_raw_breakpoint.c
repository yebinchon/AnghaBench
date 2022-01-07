
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct symtab_and_line {int line; int section; TYPE_1__* symtab; int pc; } ;
struct breakpoint {int type; int thread; struct breakpoint* next; scalar_t__ pending; int * ops; int * exec_pathname; scalar_t__ forked_inferior_pid; int * triggered_dll_pathname; int * dll_pathname; int frame_id; int * commands; scalar_t__ ignore_count; scalar_t__ silent; int enable_state; int line_number; int input_radix; int language; TYPE_3__* loc; int * source_file; } ;
typedef enum bptype { ____Placeholder_bptype } bptype ;
struct TYPE_6__ {int section; int requested_address; int address; } ;
struct TYPE_5__ {int la_language; } ;
struct TYPE_4__ {int filename; } ;


 int adjust_breakpoint_address (int ) ;
 TYPE_3__* allocate_bp_location (struct breakpoint*,int) ;
 int bp_enabled ;
 struct breakpoint* breakpoint_chain ;
 int breakpoints_changed () ;
 int check_duplicates (struct breakpoint*) ;
 TYPE_2__* current_language ;
 int input_radix ;
 int memset (struct breakpoint*,int ,int) ;
 int null_frame_id ;
 int * savestring (int ,int ) ;
 int strlen (int ) ;
 scalar_t__ xmalloc (int) ;

struct breakpoint *
set_raw_breakpoint (struct symtab_and_line sal, enum bptype bptype)
{
  struct breakpoint *b, *b1;

  b = (struct breakpoint *) xmalloc (sizeof (struct breakpoint));
  memset (b, 0, sizeof (*b));
  b->loc = allocate_bp_location (b, bptype);
  b->loc->requested_address = sal.pc;
  b->loc->address = adjust_breakpoint_address (b->loc->requested_address);
  if (sal.symtab == ((void*)0))
    b->source_file = ((void*)0);
  else
    b->source_file = savestring (sal.symtab->filename,
     strlen (sal.symtab->filename));
  b->loc->section = sal.section;
  b->type = bptype;
  b->language = current_language->la_language;
  b->input_radix = input_radix;
  b->thread = -1;
  b->line_number = sal.line;
  b->enable_state = bp_enabled;
  b->next = 0;
  b->silent = 0;
  b->ignore_count = 0;
  b->commands = ((void*)0);
  b->frame_id = null_frame_id;
  b->dll_pathname = ((void*)0);
  b->triggered_dll_pathname = ((void*)0);
  b->forked_inferior_pid = 0;
  b->exec_pathname = ((void*)0);
  b->ops = ((void*)0);
  b->pending = 0;





  b1 = breakpoint_chain;
  if (b1 == 0)
    breakpoint_chain = b;
  else
    {
      while (b1->next)
 b1 = b1->next;
      b1->next = b;
    }

  check_duplicates (b);
  breakpoints_changed ();

  return b;
}
