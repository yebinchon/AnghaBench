
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sub_seq {scalar_t__ lower; scalar_t__ upper; } ;
struct name_seq {int first_free; struct sub_seq* sseqs; } ;



__attribute__((used)) static u32 nameseq_locate_subseq(struct name_seq *nseq, u32 instance)
{
 struct sub_seq *sseqs = nseq->sseqs;
 int low = 0;
 int high = nseq->first_free - 1;
 int mid;

 while (low <= high) {
  mid = (low + high) / 2;
  if (instance < sseqs[mid].lower)
   high = mid - 1;
  else if (instance > sseqs[mid].upper)
   low = mid + 1;
  else
   return mid;
 }
 return low;
}
