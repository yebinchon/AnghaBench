
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct l2cap_disconn_req {void* scid; void* dcid; } ;
struct l2cap_conn {int dummy; } ;
typedef int req ;
struct TYPE_2__ {int scid; int dcid; } ;


 int L2CAP_DISCONN_REQ ;
 void* cpu_to_le16 (int ) ;
 int l2cap_get_ident (struct l2cap_conn*) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_disconn_req*) ;

__attribute__((used)) static void l2cap_send_disconn_req(struct l2cap_conn *conn, struct sock *sk)
{
 struct l2cap_disconn_req req;

 req.dcid = cpu_to_le16(l2cap_pi(sk)->dcid);
 req.scid = cpu_to_le16(l2cap_pi(sk)->scid);
 l2cap_send_cmd(conn, l2cap_get_ident(conn),
   L2CAP_DISCONN_REQ, sizeof(req), &req);
}
