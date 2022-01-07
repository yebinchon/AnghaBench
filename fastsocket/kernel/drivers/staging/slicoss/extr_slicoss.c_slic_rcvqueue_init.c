
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_rcvqueue {int size; int count; scalar_t__ errors; int * head; int * tail; } ;
struct adapter {scalar_t__ state; struct slic_rcvqueue rcvqueue; } ;


 scalar_t__ ADAPT_DOWN ;
 int ASSERT (int) ;
 int SLIC_RCVQ_ENTRIES ;
 int SLIC_RCVQ_FILLENTRIES ;
 int SLIC_RCVQ_MINENTRIES ;
 int STATUS_FAILURE ;
 int STATUS_SUCCESS ;
 scalar_t__ slic_rcvqueue_fill (struct adapter*) ;
 int slic_rcvqueue_free (struct adapter*) ;

__attribute__((used)) static int slic_rcvqueue_init(struct adapter *adapter)
{
 int i, count;
 struct slic_rcvqueue *rcvq = &adapter->rcvqueue;

 ASSERT(adapter->state == ADAPT_DOWN);
 rcvq->tail = ((void*)0);
 rcvq->head = ((void*)0);
 rcvq->size = SLIC_RCVQ_ENTRIES;
 rcvq->errors = 0;
 rcvq->count = 0;
 i = (SLIC_RCVQ_ENTRIES / SLIC_RCVQ_FILLENTRIES);
 count = 0;
 while (i) {
  count += slic_rcvqueue_fill(adapter);
  i--;
 }
 if (rcvq->count < SLIC_RCVQ_MINENTRIES) {
  slic_rcvqueue_free(adapter);
  return STATUS_FAILURE;
 }
 return STATUS_SUCCESS;
}
