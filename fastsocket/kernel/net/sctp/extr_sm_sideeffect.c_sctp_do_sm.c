
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_state_t ;
struct TYPE_3__ {int (* fn ) (struct sctp_endpoint*,struct sctp_association*,int ,void*,int *) ;} ;
typedef TYPE_1__ sctp_sm_table_entry_t ;
typedef size_t sctp_event_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
typedef int printfn_t ;
typedef int gfp_t ;


 int DEBUG_POST ;
 int DEBUG_POST_SFX ;
 int DEBUG_PRE ;

 int sctp_init_cmd_seq (int *) ;


 int sctp_side_effects (size_t,int ,int ,struct sctp_endpoint*,struct sctp_association*,void*,int ,int *,int ) ;
 TYPE_1__* sctp_sm_lookup_event (size_t,int ,int ) ;

 int stub2 (struct sctp_endpoint*,struct sctp_association*,int ,void*,int *) ;

int sctp_do_sm(sctp_event_t event_type, sctp_subtype_t subtype,
        sctp_state_t state,
        struct sctp_endpoint *ep,
        struct sctp_association *asoc,
        void *event_arg,
        gfp_t gfp)
{
 sctp_cmd_seq_t commands;
 const sctp_sm_table_entry_t *state_fn;
 sctp_disposition_t status;
 int error = 0;
 typedef const char *(printfn_t)(sctp_subtype_t);

 static printfn_t *table[] = {
  ((void*)0), 131, 128, 130, 129,
 };
 printfn_t *debug_fn __attribute__ ((unused)) = table[event_type];




 state_fn = sctp_sm_lookup_event(event_type, state, subtype);

 sctp_init_cmd_seq(&commands);

 DEBUG_PRE;
 status = (*state_fn->fn)(ep, asoc, subtype, event_arg, &commands);
 DEBUG_POST;

 error = sctp_side_effects(event_type, subtype, state,
      ep, asoc, event_arg, status,
      &commands, gfp);
 DEBUG_POST_SFX;

 return error;
}
