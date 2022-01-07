
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_MODE (int ) ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 scalar_t__ cselib_reg_set_mode (int ) ;
 int rtx_equal_for_cselib_p (int ,int ) ;

__attribute__((used)) static int
reload_cse_noop_set_p (rtx set)
{
  if (cselib_reg_set_mode (SET_DEST (set)) != GET_MODE (SET_DEST (set)))
    return 0;

  return rtx_equal_for_cselib_p (SET_DEST (set), SET_SRC (set));
}
