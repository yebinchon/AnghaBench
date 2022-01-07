
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hfa384x_t ;
struct TYPE_3__ {scalar_t__ parm2; scalar_t__ parm1; int parm0; int cmd; } ;
typedef TYPE_1__ hfa384x_metacmd_t ;


 int HFA384x_CMDCODE_INQ ;
 int HFA384x_IT_COMMTALLIES ;
 int hfa384x_docmd_async (int *,TYPE_1__*,int *,int *,int *) ;

int hfa384x_drvr_commtallies(hfa384x_t *hw)
{
 hfa384x_metacmd_t cmd;

 cmd.cmd = HFA384x_CMDCODE_INQ;
 cmd.parm0 = HFA384x_IT_COMMTALLIES;
 cmd.parm1 = 0;
 cmd.parm2 = 0;

 hfa384x_docmd_async(hw, &cmd, ((void*)0), ((void*)0), ((void*)0));

 return 0;
}
