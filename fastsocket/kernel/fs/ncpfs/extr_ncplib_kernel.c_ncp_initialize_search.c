
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nw_search_sequence {int dummy; } ;
struct ncp_server {int* name_space; } ;
struct inode {int dummy; } ;
typedef size_t __u8 ;
typedef int __le32 ;
struct TYPE_2__ {size_t volNumber; int dirEntNum; } ;


 TYPE_1__* NCP_FINFO (struct inode*) ;
 int memcpy (struct nw_search_sequence*,int ,int) ;
 int ncp_add_byte (struct ncp_server*,int) ;
 int ncp_add_handle_path (struct ncp_server*,size_t,int ,int,int *) ;
 int ncp_init_request (struct ncp_server*) ;
 int ncp_reply_data (struct ncp_server*,int ) ;
 int ncp_request (struct ncp_server*,int) ;
 int ncp_unlock_server (struct ncp_server*) ;

int
ncp_initialize_search(struct ncp_server *server, struct inode *dir,
   struct nw_search_sequence *target)
{
 __u8 volnum = NCP_FINFO(dir)->volNumber;
 __le32 dirent = NCP_FINFO(dir)->dirEntNum;
 int result;

 ncp_init_request(server);
 ncp_add_byte(server, 2);
 ncp_add_byte(server, server->name_space[volnum]);
 ncp_add_byte(server, 0);
 ncp_add_handle_path(server, volnum, dirent, 1, ((void*)0));

 result = ncp_request(server, 87);
 if (result)
  goto out;
 memcpy(target, ncp_reply_data(server, 0), sizeof(*target));

out:
 ncp_unlock_server(server);
 return result;
}
