
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t other; } ;
typedef TYPE_1__ sctp_subtype_t ;


 size_t SCTP_EVENT_OTHER_MAX ;
 char const** sctp_other_tbl ;

const char *sctp_oname(const sctp_subtype_t id)
{
 if (id.other <= SCTP_EVENT_OTHER_MAX)
  return sctp_other_tbl[id.other];
 return "unknown 'other' event";
}
