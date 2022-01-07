
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lsock_peer {int input; } ;


 int LIST_REMOVE (struct lsock_peer*,int ) ;
 int free (struct lsock_peer*) ;
 int link ;
 int snmpd_input_close (int *) ;

__attribute__((used)) static void
lsock_peer_close(struct lsock_peer *peer)
{

 LIST_REMOVE(peer, link);
 snmpd_input_close(&peer->input);
 free(peer);
}
