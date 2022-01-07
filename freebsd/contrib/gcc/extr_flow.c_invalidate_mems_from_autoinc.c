
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct propagate_block_info {int dummy; } ;
typedef int rtx ;


 int GET_CODE (int ) ;
 scalar_t__ GET_RTX_CLASS (int ) ;
 scalar_t__ RTX_AUTOINC ;
 int XEXP (int ,int ) ;
 int invalidate_mems_from_set (struct propagate_block_info*,int ) ;

__attribute__((used)) static int
invalidate_mems_from_autoinc (rtx *px, void *data)
{
  rtx x = *px;
  struct propagate_block_info *pbi = data;

  if (GET_RTX_CLASS (GET_CODE (x)) == RTX_AUTOINC)
    {
      invalidate_mems_from_set (pbi, XEXP (x, 0));
      return -1;
    }

  return 0;
}
