
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
struct dummy_frame {int regcache; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef scalar_t__ CORE_ADDR ;


 int dummy_frame_this_id (struct frame_info*,void**,struct frame_id*) ;
 int gdb_assert (int ) ;
 int not_lval ;
 int regcache_cooked_read (int ,int,void*) ;

__attribute__((used)) static void
dummy_frame_prev_register (struct frame_info *next_frame,
      void **this_prologue_cache,
      int regnum, int *optimized,
      enum lval_type *lvalp, CORE_ADDR *addrp,
      int *realnum, void *bufferp)
{
  struct dummy_frame *dummy;
  struct frame_id id;



  dummy_frame_this_id (next_frame, this_prologue_cache, &id);
  dummy = (*this_prologue_cache);
  gdb_assert (dummy != ((void*)0));



  *optimized = 0;
  *lvalp = not_lval;
  *addrp = 0;
  *realnum = -1;


  if (bufferp != ((void*)0))
    {




      regcache_cooked_read (dummy->regcache, regnum, bufferp);
    }
}
