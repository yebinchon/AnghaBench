
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int unw_record_type ;
struct TYPE_6__ {int type; } ;
struct TYPE_7__ {TYPE_1__ r; int slot_number; } ;
typedef TYPE_2__ unw_rec_list ;


 int SLOT_NUM_NOT_SET ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_2__* xmalloc (int) ;

__attribute__((used)) static unw_rec_list *
alloc_record (unw_record_type t)
{
  unw_rec_list *ptr;
  ptr = xmalloc (sizeof (*ptr));
  memset (ptr, 0, sizeof (*ptr));
  ptr->slot_number = SLOT_NUM_NOT_SET;
  ptr->r.type = t;
  return ptr;
}
