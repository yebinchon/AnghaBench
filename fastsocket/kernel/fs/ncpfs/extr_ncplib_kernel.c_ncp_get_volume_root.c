
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int * name_space; } ;
typedef size_t __u8 ;
typedef size_t __u32 ;
typedef int __le32 ;


 int DPRINTK (char*,...) ;
 int ncp_add_byte (struct ncp_server*,int) ;
 int ncp_add_dword (struct ncp_server*,int ) ;
 int ncp_add_pstring (struct ncp_server*,char const*) ;
 int ncp_get_known_namespace (struct ncp_server*,size_t) ;
 int ncp_init_request (struct ncp_server*) ;
 size_t ncp_reply_byte (struct ncp_server*,int) ;
 int ncp_reply_dword (struct ncp_server*,int) ;
 int ncp_request (struct ncp_server*,int) ;
 int ncp_unlock_server (struct ncp_server*) ;

int
ncp_get_volume_root(struct ncp_server *server, const char *volname,
      __u32* volume, __le32* dirent, __le32* dosdirent)
{
 int result;
 __u8 volnum;

 DPRINTK("ncp_get_volume_root: looking up vol %s\n", volname);

 ncp_init_request(server);
 ncp_add_byte(server, 22);
 ncp_add_byte(server, 0);
 ncp_add_byte(server, 0);
 ncp_add_byte(server, 0);
 ncp_add_byte(server, 0);

 ncp_add_byte(server, 0);
 ncp_add_dword(server, 0);
 ncp_add_byte(server, 0xff);
 ncp_add_byte(server, 1);
 ncp_add_pstring(server, volname);

 if ((result = ncp_request(server, 87)) != 0) {
  ncp_unlock_server(server);
  return result;
 }
 *dirent = *dosdirent = ncp_reply_dword(server, 4);
 volnum = ncp_reply_byte(server, 8);
 ncp_unlock_server(server);
 *volume = volnum;

 server->name_space[volnum] = ncp_get_known_namespace(server, volnum);

 DPRINTK("lookup_vol: namespace[%d] = %d\n",
  volnum, server->name_space[volnum]);

 return 0;
}
