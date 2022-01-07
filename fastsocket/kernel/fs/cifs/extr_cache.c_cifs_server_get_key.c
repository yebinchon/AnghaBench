
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct sockaddr_in6 {int sin6_addr; int sin6_port; } ;
struct sockaddr_in {int sin_addr; int sin_port; } ;
struct sockaddr {int sa_family; } ;
struct cifs_server_key {int family; TYPE_1__* addr; int port; } ;
struct TCP_Server_Info {int dstaddr; } ;
struct TYPE_2__ {int ipv6_addr; int ipv4_addr; } ;




 int cERROR (int,char*,int) ;
 int memset (struct cifs_server_key*,int ,int) ;

__attribute__((used)) static uint16_t cifs_server_get_key(const void *cookie_netfs_data,
       void *buffer, uint16_t maxbuf)
{
 const struct TCP_Server_Info *server = cookie_netfs_data;
 const struct sockaddr *sa = (struct sockaddr *) &server->dstaddr;
 const struct sockaddr_in *addr = (struct sockaddr_in *) sa;
 const struct sockaddr_in6 *addr6 = (struct sockaddr_in6 *) sa;
 struct cifs_server_key *key = buffer;
 uint16_t key_len = sizeof(struct cifs_server_key);

 memset(key, 0, key_len);





 switch (sa->sa_family) {
 case 129:
  key->family = sa->sa_family;
  key->port = addr->sin_port;
  key->addr[0].ipv4_addr = addr->sin_addr;
  key_len += sizeof(key->addr[0].ipv4_addr);
  break;

 case 128:
  key->family = sa->sa_family;
  key->port = addr6->sin6_port;
  key->addr[0].ipv6_addr = addr6->sin6_addr;
  key_len += sizeof(key->addr[0].ipv6_addr);
  break;

 default:
  cERROR(1, "Unknown network family '%d'", sa->sa_family);
  key_len = 0;
  break;
 }

 return key_len;
}
