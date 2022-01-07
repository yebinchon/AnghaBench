
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t timeout; } ;
typedef TYPE_1__ sctp_subtype_t ;


 size_t SCTP_EVENT_TIMEOUT_MAX ;
 char const** sctp_timer_tbl ;

const char *sctp_tname(const sctp_subtype_t id)
{
 if (id.timeout <= SCTP_EVENT_TIMEOUT_MAX)
  return sctp_timer_tbl[id.timeout];
 return "unknown_timer";
}
