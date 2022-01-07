
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_ids {int seq_max; int ipcs_idr; scalar_t__ seq; scalar_t__ in_use; int rw_mutex; } ;


 int INT_MAX ;
 int SEQ_MULTIPLIER ;
 int USHORT_MAX ;
 int idr_init (int *) ;
 int init_rwsem (int *) ;

void ipc_init_ids(struct ipc_ids *ids)
{
 init_rwsem(&ids->rw_mutex);

 ids->in_use = 0;
 ids->seq = 0;
 {
  int seq_limit = INT_MAX/SEQ_MULTIPLIER;
  if (seq_limit > USHORT_MAX)
   ids->seq_max = USHORT_MAX;
   else
    ids->seq_max = seq_limit;
 }

 idr_init(&ids->ipcs_idr);
}
