
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef scalar_t__ CORE_ADDR ;


 int DEPRECATED_FRAME_INIT_SAVED_REGS (struct frame_info*) ;
 scalar_t__ DEPRECATED_REGISTER_BYTE (int) ;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 scalar_t__ DUMMY_FRAME ;
 int SP_REGNUM ;
 int deprecated_find_dummy_frame_regcache (int ,int ) ;
 scalar_t__* deprecated_get_frame_saved_regs (struct frame_info*) ;
 int deprecated_read_register_gen (int,char*) ;
 int error (char*) ;
 scalar_t__ frame_relative_level (struct frame_info*) ;
 int get_frame_base (struct frame_info*) ;
 int get_frame_pc (struct frame_info*) ;
 scalar_t__ get_frame_type (struct frame_info*) ;
 struct frame_info* get_next_frame (struct frame_info*) ;
 int lval_memory ;
 int lval_register ;
 int not_lval ;
 int read_memory (scalar_t__,char*,int ) ;
 int regcache_raw_read (int ,int,char*) ;
 int store_unsigned_integer (char*,int ,scalar_t__) ;
 int target_has_registers ;

void
deprecated_generic_get_saved_register (char *raw_buffer, int *optimized,
           CORE_ADDR *addrp,
           struct frame_info *frame, int regnum,
           enum lval_type *lval)
{
  if (!target_has_registers)
    error ("No registers.");


  if (optimized != ((void*)0))
    *optimized = 0;

  if (addrp)
    *addrp = 0;






  if (frame != ((void*)0))
    {
      for (frame = get_next_frame (frame);
    frame_relative_level (frame) >= 0;
    frame = get_next_frame (frame))
 {
   if (get_frame_type (frame) == DUMMY_FRAME)
     {
       if (lval)
  *lval = not_lval;
       if (raw_buffer)




  regcache_raw_read
    (deprecated_find_dummy_frame_regcache (get_frame_pc (frame),
        get_frame_base (frame)),
     regnum, raw_buffer);
       return;
     }

   DEPRECATED_FRAME_INIT_SAVED_REGS (frame);
   if (deprecated_get_frame_saved_regs (frame) != ((void*)0)
       && deprecated_get_frame_saved_regs (frame)[regnum] != 0)
     {
       if (lval)
  *lval = lval_memory;
       if (regnum == SP_REGNUM)
  {
    if (raw_buffer)


      store_unsigned_integer (raw_buffer,
         DEPRECATED_REGISTER_RAW_SIZE (regnum),
         deprecated_get_frame_saved_regs (frame)[regnum]);
  }
       else
  {
    if (addrp)
      *addrp = deprecated_get_frame_saved_regs (frame)[regnum];
    if (raw_buffer)
      read_memory (deprecated_get_frame_saved_regs (frame)[regnum], raw_buffer,
     DEPRECATED_REGISTER_RAW_SIZE (regnum));
  }
       return;
     }
 }
    }




  if (lval)
    *lval = lval_register;
  if (addrp)
    *addrp = DEPRECATED_REGISTER_BYTE (regnum);
  if (raw_buffer)
    deprecated_read_register_gen (regnum, raw_buffer);
}
