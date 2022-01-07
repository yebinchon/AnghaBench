
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int local_nls; int remote_nls; } ;


 int unload_nls (int ) ;

__attribute__((used)) static void
smb_unload_nls(struct smb_sb_info *server)
{
 unload_nls(server->remote_nls);
 unload_nls(server->local_nls);
}
