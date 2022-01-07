
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tport {int dummy; } ;
struct sockaddr_un {void* sun_len; void* sun_family; int sun_path; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int fd; int * id; } ;
struct lsock_port {scalar_t__ type; int str_sock; TYPE_1__ input; int name; int peers; int * str_id; } ;
struct lsock_peer {scalar_t__ type; int str_sock; TYPE_1__ input; int name; int peers; int * str_id; } ;
typedef int sa ;
typedef int on ;


 void* AF_LOCAL ;
 scalar_t__ EADDRNOTAVAIL ;
 struct lsock_port* LIST_FIRST (int *) ;
 int LOCAL_CREDS ;
 scalar_t__ LOCP_STREAM_PRIV ;
 scalar_t__ LOCP_STREAM_UNPRIV ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int PF_LOCAL ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_INCONS_NAME ;
 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_RES_UNAVAIL ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 void* SUN_LEN (struct sockaddr_un*) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int chmod (int ,int) ;
 int close (int) ;
 scalar_t__ errno ;
 void* fd_select (int,int ,struct lsock_port*,int *) ;
 int listen (int,int) ;
 int lsock_input ;
 int lsock_listen_input ;
 int remove (int ) ;
 int setsockopt (int,int ,int ,int const*,int) ;
 void* socket (int ,int ,int ) ;
 int strlcpy (int ,int ,int) ;
 int syslog (int ,char*,...) ;

__attribute__((used)) static int
lsock_init_port(struct tport *tp)
{
 struct lsock_port *p = (struct lsock_port *)tp;
 struct sockaddr_un sa;

 if (p->type == LOCP_STREAM_PRIV || p->type == LOCP_STREAM_UNPRIV) {
  if ((p->str_sock = socket(PF_LOCAL, SOCK_STREAM, 0)) < 0) {
   syslog(LOG_ERR, "creating local socket: %m");
   return (SNMP_ERR_RES_UNAVAIL);
  }

  strlcpy(sa.sun_path, p->name, sizeof(sa.sun_path));
  sa.sun_family = AF_LOCAL;
  sa.sun_len = SUN_LEN(&sa);

  (void)remove(p->name);

  if (bind(p->str_sock, (struct sockaddr *)&sa, sizeof(sa))) {
   if (errno == EADDRNOTAVAIL) {
    close(p->str_sock);
    p->str_sock = -1;
    return (SNMP_ERR_INCONS_NAME);
   }
   syslog(LOG_ERR, "bind: %s %m", p->name);
   close(p->str_sock);
   p->str_sock = -1;
   return (SNMP_ERR_GENERR);
  }
  if (chmod(p->name, 0666) == -1)
   syslog(LOG_WARNING, "chmod(%s,0666): %m", p->name);

  if (listen(p->str_sock, 10) == -1) {
   syslog(LOG_ERR, "listen: %s %m", p->name);
   (void)remove(p->name);
   close(p->str_sock);
   p->str_sock = -1;
   return (SNMP_ERR_GENERR);
  }

  p->str_id = fd_select(p->str_sock, lsock_listen_input, p, ((void*)0));
  if (p->str_id == ((void*)0)) {
   (void)remove(p->name);
   close(p->str_sock);
   p->str_sock = -1;
   return (SNMP_ERR_GENERR);
  }
 } else {
  struct lsock_peer *peer;
  const int on = 1;

  peer = LIST_FIRST(&p->peers);

  if ((peer->input.fd = socket(PF_LOCAL, SOCK_DGRAM, 0)) < 0) {
   syslog(LOG_ERR, "creating local socket: %m");
   return (SNMP_ERR_RES_UNAVAIL);
  }

  if (setsockopt(peer->input.fd, 0, LOCAL_CREDS, &on,
      sizeof(on)) == -1) {
   syslog(LOG_ERR, "setsockopt(LOCAL_CREDS): %m");
   close(peer->input.fd);
   peer->input.fd = -1;
   return (SNMP_ERR_GENERR);
  }

  strlcpy(sa.sun_path, p->name, sizeof(sa.sun_path));
  sa.sun_family = AF_LOCAL;
  sa.sun_len = SUN_LEN(&sa);

  (void)remove(p->name);

  if (bind(peer->input.fd, (struct sockaddr *)&sa, sizeof(sa))) {
   if (errno == EADDRNOTAVAIL) {
    close(peer->input.fd);
    peer->input.fd = -1;
    return (SNMP_ERR_INCONS_NAME);
   }
   syslog(LOG_ERR, "bind: %s %m", p->name);
   close(peer->input.fd);
   peer->input.fd = -1;
   return (SNMP_ERR_GENERR);
  }
  if (chmod(p->name, 0666) == -1)
   syslog(LOG_WARNING, "chmod(%s,0666): %m", p->name);

  peer->input.id = fd_select(peer->input.fd, lsock_input,
      peer, ((void*)0));
  if (peer->input.id == ((void*)0)) {
   (void)remove(p->name);
   close(peer->input.fd);
   peer->input.fd = -1;
   return (SNMP_ERR_GENERR);
  }
 }
 return (SNMP_ERR_NOERROR);
}
