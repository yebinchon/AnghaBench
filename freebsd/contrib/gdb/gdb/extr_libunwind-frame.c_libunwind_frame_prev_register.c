
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int unw_word_t ;
struct TYPE_4__ {scalar_t__ addr; } ;
struct TYPE_5__ {int type; TYPE_1__ u; } ;
typedef TYPE_2__ unw_save_loc_t ;
typedef scalar_t__ unw_regnum_t ;
typedef int unw_fpreg_t ;
typedef int unw_cursor_t ;
struct libunwind_frame_cache {int cursor; } ;
struct libunwind_descr {scalar_t__ (* gdb2uw ) (int) ;scalar_t__ (* is_fpreg ) (scalar_t__) ;} ;
struct frame_info {int dummy; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef scalar_t__ CORE_ADDR ;





 int current_gdbarch ;
 int error (char*) ;
 int gdb_assert (int) ;
 int get_frame_arch (struct frame_info*) ;
 struct libunwind_descr* libunwind_descr (int ) ;
 struct libunwind_frame_cache* libunwind_frame_cache (struct frame_info*,void**) ;
 int lval_memory ;
 int lval_register ;
 int memcpy (void*,void*,int ) ;
 int memset (void*,int ,int ) ;
 int not_lval ;
 int register_size (int ,int) ;
 scalar_t__ stub1 (int) ;
 scalar_t__ stub2 (scalar_t__) ;
 int target_has_registers ;
 int unw_get_fpreg_p (int *,scalar_t__,int *) ;
 int unw_get_reg_p (int *,scalar_t__,int *) ;
 scalar_t__ unw_get_saveloc_p (int *,scalar_t__,TYPE_2__*) ;

void
libunwind_frame_prev_register (struct frame_info *next_frame, void **this_cache,
          int regnum, int *optimizedp,
          enum lval_type *lvalp, CORE_ADDR *addrp,
          int *realnump, void *valuep)
{
  struct libunwind_frame_cache *cache =
    libunwind_frame_cache (next_frame, this_cache);

  void *ptr;
  unw_cursor_t *c;
  unw_save_loc_t sl;
  int i, ret;
  unw_word_t intval;
  unw_fpreg_t fpval;
  unw_regnum_t uw_regnum;
  struct libunwind_descr *descr;


  descr = libunwind_descr (get_frame_arch (next_frame));
  uw_regnum = descr->gdb2uw (regnum);

  gdb_assert (regnum >= 0);

  if (!target_has_registers)
    error ("No registers.");

  *optimizedp = 0;
  *addrp = 0;
  *lvalp = not_lval;
  *realnump = -1;

  memset (valuep, 0, register_size (current_gdbarch, regnum));

  if (uw_regnum < 0)
    return;




  if (descr->is_fpreg (uw_regnum))
    {
      ret = unw_get_fpreg_p (&cache->cursor, uw_regnum, &fpval);
      ptr = &fpval;
    }
  else
    {
      ret = unw_get_reg_p (&cache->cursor, uw_regnum, &intval);
      ptr = &intval;
    }

  if (ret < 0)
    return;

  memcpy (valuep, ptr, register_size (current_gdbarch, regnum));

  if (unw_get_saveloc_p (&cache->cursor, uw_regnum, &sl) < 0)
    return;

  switch (sl.type)
    {
    case 129:
      *optimizedp = 1;
      break;

    case 130:
      *lvalp = lval_memory;
      *addrp = sl.u.addr;
      break;

    case 128:
      *lvalp = lval_register;
      *realnump = regnum;
      break;
    }
}
