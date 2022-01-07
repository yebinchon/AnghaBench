
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ncp_server {int* name_space; } ;
struct inode {int dummy; } ;
typedef int __le16 ;
struct TYPE_2__ {size_t volNumber; int dirEntNum; } ;


 int EINVAL ;
 TYPE_1__* NCP_FINFO (struct inode*) ;
 int ncp_add_byte (struct ncp_server*,int) ;
 int ncp_add_dword (struct ncp_server*,int ) ;
 int ncp_add_pstring (struct ncp_server*,char*) ;
 int ncp_add_word (struct ncp_server*,int ) ;
 int ncp_init_request (struct ncp_server*) ;
 int ncp_request (struct ncp_server*,int) ;
 int ncp_unlock_server (struct ncp_server*) ;

__attribute__((used)) static int
ncp_RenameNSEntry(struct ncp_server *server,
    struct inode *old_dir, char *old_name, __le16 old_type,
    struct inode *new_dir, char *new_name)
{
 int result = -EINVAL;

 if ((old_dir == ((void*)0)) || (old_name == ((void*)0)) ||
     (new_dir == ((void*)0)) || (new_name == ((void*)0)))
  goto out;

 ncp_init_request(server);
 ncp_add_byte(server, 4);
 ncp_add_byte(server, server->name_space[NCP_FINFO(old_dir)->volNumber]);
 ncp_add_byte(server, 1);
 ncp_add_word(server, old_type);


 ncp_add_byte(server, NCP_FINFO(old_dir)->volNumber);
 ncp_add_dword(server, NCP_FINFO(old_dir)->dirEntNum);
 ncp_add_byte(server, 1);
 ncp_add_byte(server, 1);


 ncp_add_byte(server, NCP_FINFO(new_dir)->volNumber);
 ncp_add_dword(server, NCP_FINFO(new_dir)->dirEntNum);
 ncp_add_byte(server, 1);
 ncp_add_byte(server, 1);


 ncp_add_pstring(server, old_name);

 ncp_add_pstring(server, new_name);

 result = ncp_request(server, 87);
 ncp_unlock_server(server);
out:
 return result;
}
