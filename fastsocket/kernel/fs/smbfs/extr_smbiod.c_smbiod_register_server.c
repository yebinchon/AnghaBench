
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int entry; } ;


 int VERBOSE (char*,struct smb_sb_info*) ;
 int list_add (int *,int *) ;
 int servers_lock ;
 int smb_servers ;
 int smbiod_start () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int smbiod_register_server(struct smb_sb_info *server)
{
 int ret;
 spin_lock(&servers_lock);
 list_add(&server->entry, &smb_servers);
 VERBOSE("%p\n", server);
 ret = smbiod_start();
 spin_unlock(&servers_lock);
 return ret;
}
