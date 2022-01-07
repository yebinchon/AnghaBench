
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int dummy; } ;


 int DPRINTK (char*,char const*) ;
 int assert_server_locked (struct ncp_server*) ;
 int ncp_add_byte (struct ncp_server*,int) ;
 int ncp_add_mem (struct ncp_server*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void ncp_add_pstring(struct ncp_server *server, const char *s)
{
 int len = strlen(s);
 assert_server_locked(server);
 if (len > 255) {
  DPRINTK("ncpfs: string too long: %s\n", s);
  len = 255;
 }
 ncp_add_byte(server, len);
 ncp_add_mem(server, s, len);
 return;
}
