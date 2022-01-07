
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy_frame {struct dummy_frame* next; int regcache; int id; int fp; scalar_t__ top; int sp; int pc; } ;
typedef int CORE_ADDR ;


 scalar_t__ INNER_THAN (int ,int ) ;
 int current_gdbarch ;
 int current_regcache ;
 struct dummy_frame* dummy_frame_stack ;
 int get_current_frame () ;
 int get_frame_base (int ) ;
 int get_frame_id (int ) ;
 int read_pc () ;
 int read_sp () ;
 int regcache_cpy (int ,int ) ;
 int regcache_xfree (int ) ;
 int regcache_xmalloc (int ) ;
 int xfree (struct dummy_frame*) ;
 struct dummy_frame* xmalloc (int) ;

void
generic_push_dummy_frame (void)
{
  struct dummy_frame *dummy_frame;
  CORE_ADDR fp = get_frame_base (get_current_frame ());





  dummy_frame = dummy_frame_stack;
  while (dummy_frame)
    if (INNER_THAN (dummy_frame->fp, fp))
      {
 dummy_frame_stack = dummy_frame->next;
 regcache_xfree (dummy_frame->regcache);
 xfree (dummy_frame);
 dummy_frame = dummy_frame_stack;
      }
    else
      dummy_frame = dummy_frame->next;

  dummy_frame = xmalloc (sizeof (struct dummy_frame));
  dummy_frame->regcache = regcache_xmalloc (current_gdbarch);

  dummy_frame->pc = read_pc ();
  dummy_frame->sp = read_sp ();
  dummy_frame->top = 0;
  dummy_frame->fp = fp;
  dummy_frame->id = get_frame_id (get_current_frame ());
  regcache_cpy (dummy_frame->regcache, current_regcache);
  dummy_frame->next = dummy_frame_stack;
  dummy_frame_stack = dummy_frame;
}
