
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nw_search_sequence {size_t volNumber; } ;
struct ncp_server {char* name_space; int ncp_reply_size; } ;
struct ncp_reply_header {int dummy; } ;


 int BVAL (char*) ;
 char NW_NS_NFS ;
 int RIM_ALL ;
 int WVAL_LH (char*) ;
 int cpu_to_le16 (int) ;
 int memcpy (struct nw_search_sequence*,char*,int) ;
 int ncp_add_byte (struct ncp_server*,char) ;
 int ncp_add_dword (struct ncp_server*,int ) ;
 int ncp_add_mem (struct ncp_server*,struct nw_search_sequence*,int) ;
 int ncp_add_word (struct ncp_server*,int ) ;
 int ncp_init_request (struct ncp_server*) ;
 int ncp_request2 (struct ncp_server*,int,char*,size_t) ;
 int ncp_unlock_server (struct ncp_server*) ;

int ncp_search_for_fileset(struct ncp_server *server,
      struct nw_search_sequence *seq,
      int* more,
      int* cnt,
      char* buffer,
      size_t bufsize,
      char** rbuf,
      size_t* rsize)
{
 int result;

 ncp_init_request(server);
 ncp_add_byte(server, 20);
 ncp_add_byte(server, server->name_space[seq->volNumber]);
 ncp_add_byte(server, 0);
 ncp_add_word(server, cpu_to_le16(0x8006));
 ncp_add_dword(server, RIM_ALL);
 ncp_add_word(server, cpu_to_le16(32767));
 ncp_add_mem(server, seq, 9);





 {
  ncp_add_byte(server, 2);
  ncp_add_byte(server, 0xff);
  ncp_add_byte(server, '*');
 }
 result = ncp_request2(server, 87, buffer, bufsize);
 if (result) {
  ncp_unlock_server(server);
  return result;
 }
 if (server->ncp_reply_size < 12) {
  ncp_unlock_server(server);
  return 0xFF;
 }
 *rsize = server->ncp_reply_size - 12;
 ncp_unlock_server(server);
 buffer = buffer + sizeof(struct ncp_reply_header);
 *rbuf = buffer + 12;
 *cnt = WVAL_LH(buffer + 10);
 *more = BVAL(buffer + 9);
 memcpy(seq, buffer, 9);
 return 0;
}
