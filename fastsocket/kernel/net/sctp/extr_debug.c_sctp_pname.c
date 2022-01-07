
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t primitive; } ;
typedef TYPE_1__ sctp_subtype_t ;


 size_t SCTP_EVENT_PRIMITIVE_MAX ;
 char const** sctp_primitive_tbl ;

const char *sctp_pname(const sctp_subtype_t id)
{
 if (id.primitive <= SCTP_EVENT_PRIMITIVE_MAX)
  return sctp_primitive_tbl[id.primitive];
 return "unknown_primitive";
}
