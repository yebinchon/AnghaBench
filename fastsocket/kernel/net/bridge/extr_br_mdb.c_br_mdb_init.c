
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_BRIDGE ;
 int RTM_GETMDB ;
 int br_mdb_dump ;
 int rtnl_register (int ,int ,int *,int ,int *) ;

void br_mdb_init(void)
{
 rtnl_register(PF_BRIDGE, RTM_GETMDB, ((void*)0), br_mdb_dump, ((void*)0));
}
