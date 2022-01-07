
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dprintk (char*) ;
 int nlm_traverse_files (int *,int ,int *) ;
 int nlmsvc_mark_host ;

void
nlmsvc_mark_resources(void)
{
 dprintk("lockd: nlmsvc_mark_resources\n");
 nlm_traverse_files(((void*)0), nlmsvc_mark_host, ((void*)0));
}
