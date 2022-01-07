
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sctp_cmd_seq_t ;


 int memset (int *,int ,int) ;

int sctp_init_cmd_seq(sctp_cmd_seq_t *seq)
{
 memset(seq, 0, sizeof(sctp_cmd_seq_t));
 return 1;
}
