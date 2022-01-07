
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct lsock_port {scalar_t__ type; int peers; int name; } ;
struct TYPE_2__ {int stream; int cred; int peerlen; int fd; int * id; struct sockaddr* peer; } ;
struct lsock_peer {TYPE_1__ input; int peer; struct lsock_port* port; } ;


 int LIST_INSERT_HEAD (int *,struct lsock_peer*,int ) ;
 scalar_t__ LOCP_DGRAM_PRIV ;
 scalar_t__ LOCP_STREAM_PRIV ;
 int LOG_WARNING ;
 int accept (int,struct sockaddr*,int*) ;
 struct lsock_peer* calloc (int,int) ;
 int close (int) ;
 int * fd_select (int,int ,struct lsock_peer*,int *) ;
 int free (struct lsock_peer*) ;
 int link ;
 int lsock_input ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static void
lsock_listen_input(int fd, void *udata)
{
 struct lsock_port *p = udata;
 struct lsock_peer *peer;

 if ((peer = calloc(1, sizeof(*peer))) == ((void*)0)) {
  syslog(LOG_WARNING, "%s: peer malloc failed", p->name);
  (void)close(accept(fd, ((void*)0), ((void*)0)));
  return;
 }

 peer->port = p;

 peer->input.stream = 1;
 peer->input.cred = (p->type == LOCP_DGRAM_PRIV ||
     p->type == LOCP_STREAM_PRIV);
 peer->input.peerlen = sizeof(peer->peer);
 peer->input.peer = (struct sockaddr *)&peer->peer;

 peer->input.fd = accept(fd, peer->input.peer, &peer->input.peerlen);
 if (peer->input.fd == -1) {
  syslog(LOG_WARNING, "%s: accept failed: %m", p->name);
  free(peer);
  return;
 }

 if ((peer->input.id = fd_select(peer->input.fd, lsock_input,
     peer, ((void*)0))) == ((void*)0)) {
  close(peer->input.fd);
  free(peer);
  return;
 }

 LIST_INSERT_HEAD(&p->peers, peer, link);
}
