
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_data {int dummy; } ;
typedef int rtx ;


 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (int ) ;
 int kill_value (int ,struct value_data*) ;

__attribute__((used)) static void
kill_clobbered_value (rtx x, rtx set, void *data)
{
  struct value_data *vd = data;
  if (GET_CODE (set) == CLOBBER)
    kill_value (x, vd);
}
