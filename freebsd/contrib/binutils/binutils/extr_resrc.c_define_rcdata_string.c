
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int rc_uint_type ;
struct TYPE_5__ {int length; char* s; } ;
struct TYPE_6__ {TYPE_1__ string; } ;
struct TYPE_7__ {TYPE_2__ u; int type; int * next; } ;
typedef TYPE_3__ rc_rcdata_item ;


 int RCDATA_STRING ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ res_alloc (int) ;

rc_rcdata_item *
define_rcdata_string (const char *string, rc_uint_type len)
{
  rc_rcdata_item *ri;
  char *s;

  ri = (rc_rcdata_item *) res_alloc (sizeof (rc_rcdata_item));
  ri->next = ((void*)0);
  ri->type = RCDATA_STRING;
  ri->u.string.length = len;
  s = (char *) res_alloc (len);
  memcpy (s, string, len);
  ri->u.string.s = s;

  return ri;
}
