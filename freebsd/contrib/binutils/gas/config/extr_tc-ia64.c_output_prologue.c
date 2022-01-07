
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mask; } ;
struct TYPE_8__ {TYPE_1__ r; } ;
struct TYPE_9__ {TYPE_2__ record; } ;
struct TYPE_10__ {TYPE_3__ r; } ;
typedef TYPE_4__ unw_rec_list ;


 TYPE_4__* alloc_record (int ) ;
 int memset (int *,int ,int) ;
 int prologue ;

__attribute__((used)) static unw_rec_list *
output_prologue ()
{
  unw_rec_list *ptr = alloc_record (prologue);
  memset (&ptr->r.record.r.mask, 0, sizeof (ptr->r.record.r.mask));
  return ptr;
}
