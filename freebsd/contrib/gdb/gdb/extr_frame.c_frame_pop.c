
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;


 int DEPRECATED_POP_FRAME ;
 scalar_t__ DEPRECATED_POP_FRAME_P () ;
 int current_gdbarch ;
 int current_regcache ;
 int do_cleanups (struct cleanup*) ;
 int do_frame_unwind_register ;
 int flush_cached_frames () ;
 struct cleanup* make_cleanup_regcache_xfree (struct regcache*) ;
 int regcache_cpy (int ,struct regcache*) ;
 int regcache_save (struct regcache*,int ,struct frame_info*) ;
 struct regcache* regcache_xmalloc (int ) ;

void
frame_pop (struct frame_info *this_frame)
{
  struct regcache *scratch_regcache;
  struct cleanup *cleanups;

  if (DEPRECATED_POP_FRAME_P ())
    {



      DEPRECATED_POP_FRAME;
    }
  else
    {





      struct regcache *scratch = regcache_xmalloc (current_gdbarch);
      struct cleanup *cleanups = make_cleanup_regcache_xfree (scratch);
      regcache_save (scratch, do_frame_unwind_register, this_frame);
      regcache_cpy (current_regcache, scratch);
      do_cleanups (cleanups);
    }


  flush_cached_frames ();
}
