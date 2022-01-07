
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t chunk; } ;
typedef TYPE_1__ sctp_subtype_t ;





 size_t SCTP_CID_BASE_MAX ;

 char const** sctp_cid_tbl ;

const char *sctp_cname(const sctp_subtype_t cid)
{
 if (cid.chunk <= SCTP_CID_BASE_MAX)
  return sctp_cid_tbl[cid.chunk];

 switch (cid.chunk) {
 case 131:
  return "ASCONF";

 case 130:
  return "ASCONF_ACK";

 case 128:
  return "FWD_TSN";

 case 129:
  return "AUTH";

 default:
  break;
 }

 return "unknown chunk";
}
