
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_data {int dummy; } ;
typedef int rtx ;


 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int kill_value (int ,struct value_data*) ;
 int set_value_regno (int ,int ,struct value_data*) ;

__attribute__((used)) static void
kill_set_value (rtx x, rtx set, void *data)
{
  struct value_data *vd = data;
  if (GET_CODE (set) != CLOBBER)
    {
      kill_value (x, vd);
      if (REG_P (x))
 set_value_regno (REGNO (x), GET_MODE (x), vd);
    }
}
