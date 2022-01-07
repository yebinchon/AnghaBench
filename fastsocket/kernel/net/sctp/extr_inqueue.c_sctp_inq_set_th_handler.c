
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int work_func_t ;
struct sctp_inq {int immediate; } ;


 int INIT_WORK (int *,int ) ;

void sctp_inq_set_th_handler(struct sctp_inq *q, work_func_t callback)
{
 INIT_WORK(&q->immediate, callback);
}
