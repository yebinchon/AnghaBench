
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int** __dlm_compat_matrix ;

int dlm_modes_compat(int mode1, int mode2)
{
 return __dlm_compat_matrix[mode1 + 1][mode2 + 1];
}
