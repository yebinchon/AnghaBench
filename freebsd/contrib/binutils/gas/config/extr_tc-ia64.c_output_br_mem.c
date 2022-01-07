
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned int brmask; TYPE_4__* next; } ;
struct TYPE_9__ {TYPE_1__ p; } ;
struct TYPE_10__ {TYPE_2__ record; } ;
struct TYPE_11__ {TYPE_3__ r; } ;
typedef TYPE_4__ unw_rec_list ;
struct TYPE_12__ {TYPE_1__* pending_saves; } ;


 TYPE_4__* alloc_record (int ) ;
 int br_mem ;
 TYPE_5__ unwind ;

__attribute__((used)) static unw_rec_list *
output_br_mem (unsigned int mask)
{
  unw_rec_list *ptr = alloc_record (br_mem);
  unw_rec_list *cur = ptr;

  ptr->r.record.p.brmask = mask;
  unwind.pending_saves = &ptr->r.record.p;
  for (;;)
    {
      unw_rec_list *prev = cur;


      mask &= ~(mask & (~mask + 1));
      if (!mask)
 return ptr;
      cur = alloc_record (br_mem);
      cur->r.record.p.brmask = mask;

      prev->r.record.p.brmask ^= mask;
      prev->r.record.p.next = cur;
    }
}
