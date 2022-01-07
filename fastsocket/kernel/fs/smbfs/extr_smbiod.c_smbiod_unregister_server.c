
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int entry; } ;


 int VERBOSE (char*,struct smb_sb_info*) ;
 int list_del_init (int *) ;
 int servers_lock ;
 int smbiod_flush (struct smb_sb_info*) ;
 int smbiod_wake_up () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void smbiod_unregister_server(struct smb_sb_info *server)
{
 spin_lock(&servers_lock);
 list_del_init(&server->entry);
 VERBOSE("%p\n", server);
 spin_unlock(&servers_lock);

 smbiod_wake_up();
 smbiod_flush(server);
}
