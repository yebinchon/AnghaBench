
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hfa384x_t ;
typedef int hfa384x_metacmd_t ;


 int DOWAIT ;
 int hfa384x_docmd (int *,int ,int *,int *,int *,int *) ;

__attribute__((used)) static inline int hfa384x_docmd_wait(hfa384x_t *hw, hfa384x_metacmd_t *cmd)
{
 return hfa384x_docmd(hw, DOWAIT, cmd, ((void*)0), ((void*)0), ((void*)0));
}
