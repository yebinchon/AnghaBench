
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_volume_info {int volume_name; void* sectors_per_block; void* available_dir_entries; void* total_dir_entries; scalar_t__ not_yet_purgeable_blocks; scalar_t__ purgeable_blocks; void* free_blocks; void* total_blocks; } ;
struct ncp_server {int dummy; } ;
typedef int __u8 ;


 int DPRINTK (char*,int) ;
 int EIO ;
 int NCP_VOLNAME_LEN ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;
 int ncp_add_byte (struct ncp_server*,int ) ;
 int ncp_init_request_s (struct ncp_server*,int) ;
 void* ncp_reply_byte (struct ncp_server*,int) ;
 int ncp_reply_data (struct ncp_server*,int) ;
 void* ncp_reply_dword_lh (struct ncp_server*,int) ;
 int ncp_request (struct ncp_server*,int) ;
 int ncp_unlock_server (struct ncp_server*) ;

int ncp_get_directory_info(struct ncp_server* server, __u8 n,
      struct ncp_volume_info* target) {
 int result;
 int len;

 ncp_init_request_s(server, 45);
 ncp_add_byte(server, n);

 if ((result = ncp_request(server, 22)) != 0) {
  goto out;
 }
 target->total_blocks = ncp_reply_dword_lh(server, 0);
 target->free_blocks = ncp_reply_dword_lh(server, 4);
 target->purgeable_blocks = 0;
 target->not_yet_purgeable_blocks = 0;
 target->total_dir_entries = ncp_reply_dword_lh(server, 8);
 target->available_dir_entries = ncp_reply_dword_lh(server, 12);
 target->sectors_per_block = ncp_reply_byte(server, 20);

 memset(&(target->volume_name), 0, sizeof(target->volume_name));

 result = -EIO;
 len = ncp_reply_byte(server, 21);
 if (len > NCP_VOLNAME_LEN) {
  DPRINTK("ncpfs: volume name too long: %d\n", len);
  goto out;
 }
 memcpy(&(target->volume_name), ncp_reply_data(server, 22), len);
 result = 0;
out:
 ncp_unlock_server(server);
 return result;
}
