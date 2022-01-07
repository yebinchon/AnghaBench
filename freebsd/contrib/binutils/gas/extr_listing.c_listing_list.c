
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* edict; } ;


 void* EDICT_LIST ;
 void* EDICT_NOLIST ;
 void* EDICT_NOLIST_NEXT ;
 void* EDICT_NONE ;
 int abort () ;
 scalar_t__ listing ;
 TYPE_1__* listing_tail ;

void
listing_list (int on)
{
  if (listing)
    {
      switch (on)
 {
 case 0:
   if (listing_tail->edict == EDICT_LIST)
     listing_tail->edict = EDICT_NONE;
   else
     listing_tail->edict = EDICT_NOLIST;
   break;
 case 1:
   if (listing_tail->edict == EDICT_NOLIST
       || listing_tail->edict == EDICT_NOLIST_NEXT)
     listing_tail->edict = EDICT_NONE;
   else
     listing_tail->edict = EDICT_LIST;
   break;
 case 2:
   listing_tail->edict = EDICT_NOLIST_NEXT;
   break;
 default:
   abort ();
 }
    }
}
