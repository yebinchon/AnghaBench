
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reordering_mpdu {struct reordering_mpdu* next; int Sequence; } ;
struct reordering_list {int qlen; struct reordering_mpdu* next; } ;
typedef int BOOLEAN ;


 int FALSE ;
 int MAXSEQ ;
 scalar_t__ SEQ_SMALLER (int ,int ,int ) ;
 int TRUE ;

BOOLEAN ba_reordering_mpdu_insertsorted(struct reordering_list *list, struct reordering_mpdu *mpdu)
{

 struct reordering_mpdu **ppScan = &list->next;

 while (*ppScan != ((void*)0))
 {
  if (SEQ_SMALLER((*ppScan)->Sequence, mpdu->Sequence, MAXSEQ))
  {
   ppScan = &(*ppScan)->next;
  }
  else if ((*ppScan)->Sequence == mpdu->Sequence)
  {

   return(FALSE);
  }
  else
  {

   break;
  }
 }

 mpdu->next = *ppScan;
 *ppScan = mpdu;
 list->qlen++;
 return TRUE;
}
