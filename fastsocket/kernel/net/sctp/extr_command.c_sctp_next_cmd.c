
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sctp_cmd_t ;
struct TYPE_3__ {scalar_t__ next_cmd; scalar_t__ next_free_slot; int * cmds; } ;
typedef TYPE_1__ sctp_cmd_seq_t ;



sctp_cmd_t *sctp_next_cmd(sctp_cmd_seq_t *seq)
{
 sctp_cmd_t *retval = ((void*)0);

 if (seq->next_cmd < seq->next_free_slot)
  retval = &seq->cmds[seq->next_cmd++];

 return retval;
}
