
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int rc_uint_type ;
struct TYPE_4__ {int word; } ;
struct TYPE_5__ {TYPE_1__ u; int type; int * next; } ;
typedef TYPE_2__ rc_rcdata_item ;


 int RCDATA_DWORD ;
 int RCDATA_WORD ;
 scalar_t__ res_alloc (int) ;

rc_rcdata_item *
define_rcdata_number (rc_uint_type val, int dword)
{
  rc_rcdata_item *ri;

  ri = (rc_rcdata_item *) res_alloc (sizeof (rc_rcdata_item));
  ri->next = ((void*)0);
  ri->type = dword ? RCDATA_DWORD : RCDATA_WORD;
  ri->u.word = val;

  return ri;
}
