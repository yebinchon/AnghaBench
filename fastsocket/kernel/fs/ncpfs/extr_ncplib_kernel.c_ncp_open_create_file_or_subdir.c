
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ncp_server {int* name_space; } ;
struct TYPE_4__ {int volNumber; } ;
struct ncp_entry_info {int opened; TYPE_1__ i; int file_handle; int volume; } ;
struct inode {int dummy; } ;
typedef size_t __u8 ;
typedef int __le32 ;
typedef int __le16 ;
struct TYPE_5__ {size_t volNumber; int dirEntNum; } ;


 int ConvertToNWfromDWORD (int ,int ,int ) ;
 TYPE_3__* NCP_FINFO (struct inode*) ;
 int RIM_ALL ;
 int aDIR ;
 int cpu_to_le16 (int) ;
 int ncp_add_byte (struct ncp_server*,int) ;
 int ncp_add_dword (struct ncp_server*,int) ;
 int ncp_add_handle_path (struct ncp_server*,size_t,int,int,char*) ;
 int ncp_add_word (struct ncp_server*,int ) ;
 int ncp_extract_file_info (int ,TYPE_1__*) ;
 int ncp_init_request (struct ncp_server*) ;
 int ncp_obtain_nfs_info (struct ncp_server*,TYPE_1__*) ;
 int ncp_reply_data (struct ncp_server*,int) ;
 int ncp_reply_le16 (struct ncp_server*,int) ;
 int ncp_request (struct ncp_server*,int) ;
 int ncp_unlock_server (struct ncp_server*) ;

int ncp_open_create_file_or_subdir(struct ncp_server *server,
       struct inode *dir, char *name,
       int open_create_mode,
       __le32 create_attributes,
       __le16 desired_acc_rights,
       struct ncp_entry_info *target)
{
 __le16 search_attribs = cpu_to_le16(0x0006);
 __u8 volnum;
 __le32 dirent;
 int result;

 volnum = NCP_FINFO(dir)->volNumber;
 dirent = NCP_FINFO(dir)->dirEntNum;

 if ((create_attributes & aDIR) != 0) {
  search_attribs |= cpu_to_le16(0x8000);
 }
 ncp_init_request(server);
 ncp_add_byte(server, 1);
 ncp_add_byte(server, server->name_space[volnum]);
 ncp_add_byte(server, open_create_mode);
 ncp_add_word(server, search_attribs);
 ncp_add_dword(server, RIM_ALL);
 ncp_add_dword(server, create_attributes);


 ncp_add_word(server, desired_acc_rights);
 ncp_add_handle_path(server, volnum, dirent, 1, name);

 if ((result = ncp_request(server, 87)) != 0)
  goto out;
 if (!(create_attributes & aDIR))
  target->opened = 1;


 ncp_extract_file_info(ncp_reply_data(server, 6), &(target->i));
 target->volume = target->i.volNumber;
 ConvertToNWfromDWORD(ncp_reply_le16(server, 0),
        ncp_reply_le16(server, 2),
        target->file_handle);

 ncp_unlock_server(server);

 (void)ncp_obtain_nfs_info(server, &(target->i));
 return 0;

out:
 ncp_unlock_server(server);
 return result;
}
