
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {struct frame_info* prev; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef scalar_t__ CORE_ADDR ;


 int DEPRECATED_FRAME_INIT_SAVED_REGS (struct frame_info*) ;
 int DEPRECATED_FRAME_INIT_SAVED_REGS_P () ;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 int SP_REGNUM ;
 scalar_t__* deprecated_get_frame_saved_regs (struct frame_info*) ;
 void* frame_obstack_zalloc (int) ;
 int frame_register_unwind (struct frame_info*,int,int*,int*,scalar_t__*,int*,void*) ;
 int gdb_assert (int ) ;
 int lval_memory ;
 int memcpy (void*,void*,int) ;
 int not_lval ;
 int read_memory (scalar_t__,void*,int) ;
 int store_unsigned_integer (void*,int,scalar_t__) ;

__attribute__((used)) static void
legacy_saved_regs_prev_register (struct frame_info *next_frame,
     void **this_prologue_cache,
     int regnum, int *optimizedp,
     enum lval_type *lvalp, CORE_ADDR *addrp,
     int *realnump, void *bufferp)
{






  struct frame_info *frame = next_frame->prev;
  gdb_assert (frame != ((void*)0));

  if (deprecated_get_frame_saved_regs (frame) == ((void*)0))
    {

      gdb_assert (DEPRECATED_FRAME_INIT_SAVED_REGS_P ());
      DEPRECATED_FRAME_INIT_SAVED_REGS (frame);
      gdb_assert (deprecated_get_frame_saved_regs (frame) != ((void*)0));
    }

  if (deprecated_get_frame_saved_regs (frame) != ((void*)0)
      && deprecated_get_frame_saved_regs (frame)[regnum] != 0)
    {
      if (regnum == SP_REGNUM)
 {

   *optimizedp = 0;
   *lvalp = not_lval;
   *addrp = 0;
   *realnump = -1;
   if (bufferp != ((void*)0))


     store_unsigned_integer (bufferp, DEPRECATED_REGISTER_RAW_SIZE (regnum),
        deprecated_get_frame_saved_regs (frame)[regnum]);
 }
      else
 {


   *optimizedp = 0;
   *lvalp = lval_memory;
   *addrp = deprecated_get_frame_saved_regs (frame)[regnum];
   *realnump = -1;
   if (bufferp != ((void*)0))
     {



       void **regs = (*this_prologue_cache);
       if (regs == ((void*)0))
  {
    int sizeof_cache = ((NUM_REGS + NUM_PSEUDO_REGS)
          * sizeof (void *));
    regs = frame_obstack_zalloc (sizeof_cache);
    (*this_prologue_cache) = regs;
  }
       if (regs[regnum] == ((void*)0))
  {
    regs[regnum]
      = frame_obstack_zalloc (DEPRECATED_REGISTER_RAW_SIZE (regnum));
    read_memory (deprecated_get_frame_saved_regs (frame)[regnum], regs[regnum],
          DEPRECATED_REGISTER_RAW_SIZE (regnum));
  }
       memcpy (bufferp, regs[regnum], DEPRECATED_REGISTER_RAW_SIZE (regnum));





     }
 }
      return;
    }




  frame_register_unwind (next_frame, regnum, optimizedp, lvalp, addrp,
    realnump, bufferp);
}
