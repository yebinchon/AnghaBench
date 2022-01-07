
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_cursor_t ;
typedef int unw_addr_space_t ;
typedef int unw_accessors_t ;
struct libunwind_descr {int * accessors; } ;
struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;


 scalar_t__ BFD_ENDIAN_BIG ;
 scalar_t__ TARGET_BYTE_ORDER ;
 int __BIG_ENDIAN ;
 int __LITTLE_ENDIAN ;
 int get_frame_arch (struct frame_info*) ;
 struct libunwind_descr* libunwind_descr (int ) ;
 struct frame_unwind const libunwind_frame_unwind ;
 int unw_create_addr_space_p (int *,int ) ;
 int unw_init_remote_p (int *,int ,struct frame_info*) ;
 int unw_step_p (int *) ;

const struct frame_unwind *
libunwind_frame_sniffer (struct frame_info *next_frame)
{
  unw_cursor_t cursor;
  unw_accessors_t *acc;
  unw_addr_space_t as;
  struct libunwind_descr *descr;
  int i, ret;






  descr = libunwind_descr (get_frame_arch (next_frame));
  acc = descr->accessors;
  as = unw_create_addr_space_p (acc,
     TARGET_BYTE_ORDER == BFD_ENDIAN_BIG
     ? __BIG_ENDIAN
     : __LITTLE_ENDIAN);

  ret = unw_init_remote_p (&cursor, as, next_frame);

  if (ret >= 0)
    ret = unw_step_p (&cursor);

  if (ret < 0)
    return ((void*)0);

  return &libunwind_frame_unwind;
}
