
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
struct TYPE_4__ {TYPE_1__ tcp; } ;
struct nf_conn {TYPE_2__ proto; } ;


 scalar_t__ IPPROTO_TCP ;
 scalar_t__ TCP_CONNTRACK_CLOSE ;
 scalar_t__ TCP_CONNTRACK_TIME_WAIT ;
 scalar_t__ nf_ct_protonum (struct nf_conn const*) ;

__attribute__((used)) static inline bool already_closed(const struct nf_conn *conn)
{
 if (nf_ct_protonum(conn) == IPPROTO_TCP)
  return conn->proto.tcp.state == TCP_CONNTRACK_TIME_WAIT ||
         conn->proto.tcp.state == TCP_CONNTRACK_CLOSE;
 else
  return 0;
}
