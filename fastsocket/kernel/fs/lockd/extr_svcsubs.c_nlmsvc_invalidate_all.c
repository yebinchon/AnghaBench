
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nlm_traverse_files (int *,int ,int *) ;
 int nlmsvc_is_client ;

void
nlmsvc_invalidate_all(void)
{






 nlm_traverse_files(((void*)0), nlmsvc_is_client, ((void*)0));
}
