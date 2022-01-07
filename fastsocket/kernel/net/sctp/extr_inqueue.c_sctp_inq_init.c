
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_inq {scalar_t__ malloced; int immediate; int * in_progress; int in_chunk_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int *) ;

void sctp_inq_init(struct sctp_inq *queue)
{
 INIT_LIST_HEAD(&queue->in_chunk_list);
 queue->in_progress = ((void*)0);


 INIT_WORK(&queue->immediate, ((void*)0));

 queue->malloced = 0;
}
