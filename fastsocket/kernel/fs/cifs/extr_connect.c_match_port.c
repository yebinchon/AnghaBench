
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {unsigned short sin6_port; } ;
struct sockaddr_in {unsigned short sin_port; } ;
struct sockaddr {int sa_family; } ;
struct TCP_Server_Info {int dstaddr; } ;




 int CIFS_PORT ;
 int RFC1001_PORT ;
 int WARN_ON (int) ;
 unsigned short htons (int ) ;

__attribute__((used)) static bool
match_port(struct TCP_Server_Info *server, struct sockaddr *addr)
{
 unsigned short int port, *sport;

 switch (addr->sa_family) {
 case 129:
  sport = &((struct sockaddr_in *) &server->dstaddr)->sin_port;
  port = ((struct sockaddr_in *) addr)->sin_port;
  break;
 case 128:
  sport = &((struct sockaddr_in6 *) &server->dstaddr)->sin6_port;
  port = ((struct sockaddr_in6 *) addr)->sin6_port;
  break;
 default:
  WARN_ON(1);
  return 0;
 }

 if (!port) {
  port = htons(CIFS_PORT);
  if (port == *sport)
   return 1;

  port = htons(RFC1001_PORT);
 }

 return port == *sport;
}
