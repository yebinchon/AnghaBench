
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int socklen_t ;
typedef int in_port_t ;
typedef int buf ;


 int AF_INET ;
 int EXIT_FAILURE ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int atoi (char*) ;
 int connect (int,void const*,int ) ;
 int err (int ,char*) ;
 int getaddr (char const*,int,struct sockaddr_storage*,int *) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int printf (char*,char*) ;
 int sockaddr_snprintf (char*,int,char*,void const*) ;
 int socket (int ,int,int ) ;
 int strlen (char const*) ;
 int usage (int) ;
 scalar_t__ write (int,char const*,size_t) ;

int
main(int argc, char *argv[])
{
 int sfd;
 int c;
 struct sockaddr_storage ss;
 const char *msg = "hello";
 const char *addr = "127.0.0.1";
 int type = SOCK_STREAM;
 in_port_t port = 6161;
 socklen_t slen;
 char buf[128];

 while ((c = getopt(argc, argv, "a:m:p:u")) != -1) {
  switch (c) {
  case 'a':
   addr = optarg;
   break;
  case 'm':
   msg = optarg;
   break;
  case 'p':
   port = (in_port_t)atoi(optarg);
   break;
  case 'u':
   type = SOCK_DGRAM;
   break;
  default:
   usage(c);
  }
 }

 getaddr(addr, port, &ss, &slen);

 if ((sfd = socket(AF_INET, type, 0)) == -1)
  err(EXIT_FAILURE, "socket");

 sockaddr_snprintf(buf, sizeof(buf), "%a:%p", (const void *)&ss);
 printf("connecting to: %s\n", buf);
 if (connect(sfd, (const void *)&ss, slen) == -1)
  err(EXIT_FAILURE, "connect");

 size_t len = strlen(msg) + 1;
 if (write(sfd, msg, len) != (ssize_t)len)
  err(EXIT_FAILURE, "write");
 return 0;
}
