
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_recover_nodeid; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t dlm_recover_nodeid_show(struct dlm_ls *ls, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%d\n", ls->ls_recover_nodeid);
}
