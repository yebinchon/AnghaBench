
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union sctp_addr_param {int serial; } ;
struct TYPE_4__ {int sin_family; } ;
union sctp_addr {TYPE_1__ v4; } ;
struct TYPE_6__ {void* v; } ;
struct TYPE_5__ {void* addip_hdr; } ;
struct sctp_chunk {TYPE_3__ param_hdr; TYPE_2__ subh; } ;
struct sctp_association {int addip_serial; } ;
struct sctp_af {int (* to_addr_param ) (union sctp_addr*,union sctp_addr_param*) ;} ;
typedef union sctp_addr_param sctp_addiphdr_t ;
typedef int asconf ;


 int SCTP_CID_ASCONF ;
 int htonl (int ) ;
 void* sctp_addto_chunk (struct sctp_chunk*,int,union sctp_addr_param*) ;
 struct sctp_af* sctp_get_af_specific (int ) ;
 struct sctp_chunk* sctp_make_chunk (struct sctp_association*,int ,int ,int) ;
 int stub1 (union sctp_addr*,union sctp_addr_param*) ;

__attribute__((used)) static struct sctp_chunk *sctp_make_asconf(struct sctp_association *asoc,
        union sctp_addr *addr,
        int vparam_len)
{
 sctp_addiphdr_t asconf;
 struct sctp_chunk *retval;
 int length = sizeof(asconf) + vparam_len;
 union sctp_addr_param addrparam;
 int addrlen;
 struct sctp_af *af = sctp_get_af_specific(addr->v4.sin_family);

 addrlen = af->to_addr_param(addr, &addrparam);
 if (!addrlen)
  return ((void*)0);
 length += addrlen;


 retval = sctp_make_chunk(asoc, SCTP_CID_ASCONF, 0, length);
 if (!retval)
  return ((void*)0);

 asconf.serial = htonl(asoc->addip_serial++);

 retval->subh.addip_hdr =
  sctp_addto_chunk(retval, sizeof(asconf), &asconf);
 retval->param_hdr.v =
  sctp_addto_chunk(retval, addrlen, &addrparam);

 return retval;
}
