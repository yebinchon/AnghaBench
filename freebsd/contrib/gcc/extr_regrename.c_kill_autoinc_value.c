
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_data {int dummy; } ;
typedef int rtx ;


 int GET_CODE (int ) ;
 scalar_t__ GET_RTX_CLASS (int ) ;
 int Pmode ;
 int REGNO (int ) ;
 scalar_t__ RTX_AUTOINC ;
 int XEXP (int ,int ) ;
 int kill_value (int ,struct value_data*) ;
 int set_value_regno (int ,int ,struct value_data*) ;

__attribute__((used)) static int
kill_autoinc_value (rtx *px, void *data)
{
  rtx x = *px;
  struct value_data *vd = data;

  if (GET_RTX_CLASS (GET_CODE (x)) == RTX_AUTOINC)
    {
      x = XEXP (x, 0);
      kill_value (x, vd);
      set_value_regno (REGNO (x), Pmode, vd);
      return -1;
    }

  return 0;
}
