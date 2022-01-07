
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee_buflist {int dummy; } ;
struct TYPE_2__ {unsigned int indx; struct ieee_buflist fndef; scalar_t__ localp; } ;
struct ieee_type_stack {struct ieee_type_stack* next; TYPE_1__ type; } ;
struct ieee_handle {char* modname; struct ieee_type_stack* type_stack; struct ieee_buflist global_types; struct ieee_buflist types; } ;
typedef scalar_t__ bfd_boolean ;


 unsigned int FALSE ;
 int assert (int ) ;
 int free (struct ieee_type_stack*) ;
 int ieee_append_buffer (struct ieee_handle*,struct ieee_buflist*,struct ieee_buflist*) ;
 scalar_t__ ieee_bb_record_enum ;
 scalar_t__ ieee_buffer_emptyp (struct ieee_buflist*) ;
 int ieee_change_buffer (struct ieee_handle*,struct ieee_buflist*) ;
 int ieee_write_byte (struct ieee_handle*,int) ;
 int ieee_write_id (struct ieee_handle*,char*) ;
 int ieee_write_number (struct ieee_handle*,int ) ;

__attribute__((used)) static unsigned int
ieee_pop_type_used (struct ieee_handle *info, bfd_boolean used)
{
  struct ieee_type_stack *ts;
  unsigned int ret;

  ts = info->type_stack;
  assert (ts != ((void*)0));



  if (used && ! ieee_buffer_emptyp (&ts->type.fndef))
    {
      struct ieee_buflist *buflist;

      if (ts->type.localp)
 {

   if (ieee_buffer_emptyp (&info->types))
     {
       if (! ieee_change_buffer (info, &info->types)
    || ! ieee_write_byte (info, (int) ieee_bb_record_enum)
    || ! ieee_write_byte (info, 1)
    || ! ieee_write_number (info, 0)
    || ! ieee_write_id (info, info->modname))
  return FALSE;
     }
   buflist = &info->types;
 }
      else
 {

   if (ieee_buffer_emptyp (&info->global_types))
     {
       if (! ieee_change_buffer (info, &info->global_types)
    || ! ieee_write_byte (info, (int) ieee_bb_record_enum)
    || ! ieee_write_byte (info, 2)
    || ! ieee_write_number (info, 0)
    || ! ieee_write_id (info, ""))
  return FALSE;
     }
   buflist = &info->global_types;
 }

      if (! ieee_append_buffer (info, buflist, &ts->type.fndef))
 return FALSE;
    }

  ret = ts->type.indx;
  info->type_stack = ts->next;
  free (ts);
  return ret;
}
