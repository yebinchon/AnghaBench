
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cookie_hdr; } ;
struct sctp_chunk {int transport; TYPE_2__ subh; } ;
struct TYPE_3__ {int cookie_len; void* cookie; } ;
struct sctp_association {TYPE_1__ peer; } ;


 int SCTP_CID_COOKIE_ECHO ;
 int sctp_addto_chunk (struct sctp_chunk*,int,void*) ;
 struct sctp_chunk* sctp_make_chunk (struct sctp_association const*,int ,int ,int) ;

struct sctp_chunk *sctp_make_cookie_echo(const struct sctp_association *asoc,
        const struct sctp_chunk *chunk)
{
 struct sctp_chunk *retval;
 void *cookie;
 int cookie_len;

 cookie = asoc->peer.cookie;
 cookie_len = asoc->peer.cookie_len;


 retval = sctp_make_chunk(asoc, SCTP_CID_COOKIE_ECHO, 0, cookie_len);
 if (!retval)
  goto nodata;
 retval->subh.cookie_hdr =
  sctp_addto_chunk(retval, cookie_len, cookie);
 if (chunk)
  retval->transport = chunk->transport;

nodata:
 return retval;
}
