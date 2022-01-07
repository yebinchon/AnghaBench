
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SECCLASS_TUN_SOCKET ;
 int TUN_SOCKET__CREATE ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;
 int current_sid () ;

__attribute__((used)) static int selinux_tun_dev_create(void)
{
 u32 sid = current_sid();
 return avc_has_perm(sid, sid, SECCLASS_TUN_SOCKET, TUN_SOCKET__CREATE,
       ((void*)0));
}
