
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int dummy; } ;


 int get_entry (struct dlm_ls*,int,char*,int,int*) ;

int dlm_dir_lookup(struct dlm_ls *ls, int nodeid, char *name, int namelen,
     int *r_nodeid)
{
 return get_entry(ls, nodeid, name, namelen, r_nodeid);
}
