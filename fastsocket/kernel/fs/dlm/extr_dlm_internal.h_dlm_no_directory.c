
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_exflags; } ;


 int DLM_LSFL_NODIR ;

__attribute__((used)) static inline int dlm_no_directory(struct dlm_ls *ls)
{
 return (ls->ls_exflags & DLM_LSFL_NODIR) ? 1 : 0;
}
