
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chunk; } ;
typedef TYPE_1__ sctp_subtype_t ;
typedef int sctp_state_t ;
typedef int sctp_sm_table_entry_t ;
typedef int sctp_event_t ;


 int DO_LOOKUP (int ,int ,int ) ;
 int SCTP_EVENT_OTHER_MAX ;
 int SCTP_EVENT_PRIMITIVE_MAX ;
 int SCTP_EVENT_TIMEOUT_MAX ;




 int const bug ;
 int other ;
 int other_event_table ;
 int primitive ;
 int primitive_event_table ;
 int const* sctp_chunk_event_lookup (int ,int ) ;
 int timeout ;
 int timeout_event_table ;

const sctp_sm_table_entry_t *sctp_sm_lookup_event(sctp_event_t event_type,
        sctp_state_t state,
        sctp_subtype_t event_subtype)
{
 switch (event_type) {
 case 131:
  return sctp_chunk_event_lookup(event_subtype.chunk, state);
  break;
 case 128:
  DO_LOOKUP(SCTP_EVENT_TIMEOUT_MAX, timeout,
     timeout_event_table);
  break;

 case 130:
  DO_LOOKUP(SCTP_EVENT_OTHER_MAX, other, other_event_table);
  break;

 case 129:
  DO_LOOKUP(SCTP_EVENT_PRIMITIVE_MAX, primitive,
     primitive_event_table);
  break;

 default:

  return &bug;
 }
}
