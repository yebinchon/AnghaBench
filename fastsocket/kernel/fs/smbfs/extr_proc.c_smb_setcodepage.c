
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_sb_info {TYPE_1__* ops; int * remote_nls; int * local_nls; } ;
struct smb_nls_codepage {int * remote_name; int * local_name; } ;
struct TYPE_2__ {int convert; } ;


 int convert_cp ;
 int convert_memcpy ;
 int setcodepage (int **,int *) ;
 int smb_lock_server (struct smb_sb_info*) ;
 int smb_unlock_server (struct smb_sb_info*) ;
 int strcmp (int *,char*) ;
 int unicode_table ;

int smb_setcodepage(struct smb_sb_info *server, struct smb_nls_codepage *cp)
{
 int n = 0;

 smb_lock_server(server);


 if (!*cp->remote_name)
  goto out;


 n = setcodepage(&server->local_nls, cp->local_name);
 if (n != 0)
  goto out;


 if (!strcmp(cp->remote_name, "unicode")) {
  server->remote_nls = &unicode_table;
 } else {
  n = setcodepage(&server->remote_nls, cp->remote_name);
  if (n != 0)
   setcodepage(&server->local_nls, ((void*)0));
 }

out:
 if (server->local_nls != ((void*)0) && server->remote_nls != ((void*)0))
  server->ops->convert = convert_cp;
 else
  server->ops->convert = convert_memcpy;

 smb_unlock_server(server);
 return n;
}
