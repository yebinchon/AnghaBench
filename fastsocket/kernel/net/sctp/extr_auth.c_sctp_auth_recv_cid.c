
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_chunks_param {int dummy; } ;
struct TYPE_2__ {scalar_t__ auth_chunks; } ;
struct sctp_association {TYPE_1__ c; } ;
typedef int sctp_cid_t ;


 int __sctp_auth_cid (int ,struct sctp_chunks_param*) ;
 int sctp_auth_enable ;

int sctp_auth_recv_cid(sctp_cid_t chunk, const struct sctp_association *asoc)
{
 if (!sctp_auth_enable || !asoc)
  return 0;

 return __sctp_auth_cid(chunk,
         (struct sctp_chunks_param *)asoc->c.auth_chunks);
}
