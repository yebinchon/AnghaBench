
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int cifs_convert_address (struct sockaddr*,char const*,int) ;
 int cifs_set_port (struct sockaddr*,unsigned short const) ;

int
cifs_fill_sockaddr(struct sockaddr *dst, const char *src, int len,
     const unsigned short int port)
{
 if (!cifs_convert_address(dst, src, len))
  return 0;
 return cifs_set_port(dst, port);
}
