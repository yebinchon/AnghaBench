
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {int fd; int trans; char* local_path; int write_community; int read_community; } ;


 int EBUSY ;
 int LIST_INIT (int *) ;




 int SOL_SOCKET ;
 int SO_SNDTIMEO ;
 int close (int) ;
 int errno ;
 int open_client_local (char const*) ;
 int open_client_udp (char const*,char const*) ;
 int remove (char*) ;
 int sent_pdus ;
 int seterr (TYPE_1__*,char*,...) ;
 int setsockopt (int,int ,int ,struct timeval*,int) ;
 TYPE_1__ snmp_client ;
 int strerror (int ) ;
 int strlcpy (int ,char const*,int) ;

int
snmp_open(const char *host, const char *port, const char *readcomm,
    const char *writecomm)
{
 struct timeval tout;


 if (snmp_client.fd != -1) {
  errno = EBUSY;
  seterr(&snmp_client, "%s", strerror(errno));
  return (-1);
 }


 if (readcomm != ((void*)0))
  strlcpy(snmp_client.read_community, readcomm,
      sizeof(snmp_client.read_community));
 if (writecomm != ((void*)0))
  strlcpy(snmp_client.write_community, writecomm,
      sizeof(snmp_client.write_community));

 switch (snmp_client.trans) {

   case 129:
   case 128:
  if (open_client_udp(host, port) != 0)
   return (-1);
  break;

   case 131:
   case 130:
  if (open_client_local(host) != 0)
   return (-1);
  break;

   default:
  seterr(&snmp_client, "bad transport mapping");
  return (-1);
 }
 tout.tv_sec = 0;
 tout.tv_usec = 0;
 if (setsockopt(snmp_client.fd, SOL_SOCKET, SO_SNDTIMEO,
     &tout, sizeof(struct timeval)) == -1) {
  seterr(&snmp_client, "%s", strerror(errno));
  (void)close(snmp_client.fd);
  snmp_client.fd = -1;
  if (snmp_client.local_path[0] != '\0')
   (void)remove(snmp_client.local_path);
  return (-1);
 }


 LIST_INIT(&sent_pdus);

 return (0);
}
