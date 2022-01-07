
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sctp_verb_t ;
struct TYPE_5__ {size_t next_free_slot; TYPE_1__* cmds; } ;
typedef TYPE_2__ sctp_cmd_seq_t ;
typedef int sctp_arg_t ;
struct TYPE_4__ {int obj; int verb; } ;


 int BUG_ON (int) ;
 size_t SCTP_MAX_NUM_COMMANDS ;

void sctp_add_cmd_sf(sctp_cmd_seq_t *seq, sctp_verb_t verb, sctp_arg_t obj)
{
 BUG_ON(seq->next_free_slot >= SCTP_MAX_NUM_COMMANDS);

 seq->cmds[seq->next_free_slot].verb = verb;
 seq->cmds[seq->next_free_slot++].obj = obj;
}
