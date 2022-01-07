
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy_frame {int regcache; } ;


 int current_regcache ;
 int discard_innermost_dummy (struct dummy_frame**) ;
 struct dummy_frame* dummy_frame_stack ;
 int error (char*) ;
 int flush_cached_frames () ;
 int regcache_cpy (int ,int ) ;

void
generic_pop_dummy_frame (void)
{
  struct dummy_frame *dummy_frame = dummy_frame_stack;




  if (!dummy_frame)
    error ("Can't pop dummy frame!");
  regcache_cpy (current_regcache, dummy_frame->regcache);
  flush_cached_frames ();

  discard_innermost_dummy (&dummy_frame_stack);
}
