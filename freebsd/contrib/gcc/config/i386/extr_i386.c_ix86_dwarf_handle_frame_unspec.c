
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 int INTVAL (int ) ;
 int REGNO (int ) ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 scalar_t__ UNSPEC ;


 int XVECEXP (int ,int ,int ) ;
 int dwarf2out_def_cfa (char const*,int ,int ) ;
 int dwarf2out_reg_save_reg (char const*,int ,int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;

__attribute__((used)) static void
ix86_dwarf_handle_frame_unspec (const char *label, rtx pattern, int index)
{
  rtx unspec = SET_SRC (pattern);
  gcc_assert (GET_CODE (unspec) == UNSPEC);

  switch (index)
    {
    case 128:
      dwarf2out_reg_save_reg (label, XVECEXP (unspec, 0, 0),
         SET_DEST (pattern));
      break;
    case 129:
      dwarf2out_def_cfa (label, REGNO (SET_DEST (pattern)),
    INTVAL (XVECEXP (unspec, 0, 0)));
      break;
    default:
      gcc_unreachable ();
    }
}
