
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee_handle {TYPE_3__* type_stack; int cxx; } ;
typedef int bfd_boolean ;
struct TYPE_5__ {TYPE_1__* classdef; scalar_t__ ignorep; } ;
struct TYPE_6__ {TYPE_2__ type; } ;
struct TYPE_4__ {unsigned int indx; char* vclass; char voffset; int pmisccount; int refs; int pmiscbuf; scalar_t__ ownvptr; } ;


 int FALSE ;
 int TRUE ;
 int assert (int) ;
 int ieee_append_buffer (struct ieee_handle*,int *,int *) ;
 scalar_t__ ieee_atn_record_enum ;
 int ieee_buffer_emptyp (int *) ;
 int ieee_change_buffer (struct ieee_handle*,int *) ;
 int ieee_end_struct_type (void*) ;
 scalar_t__ ieee_nn_record ;
 int ieee_write_2bytes (struct ieee_handle*,int) ;
 int ieee_write_asn (struct ieee_handle*,unsigned int,char) ;
 int ieee_write_atn65 (struct ieee_handle*,unsigned int,char*) ;
 int ieee_write_byte (struct ieee_handle*,int) ;
 int ieee_write_id (struct ieee_handle*,char*) ;
 int ieee_write_number (struct ieee_handle*,int) ;

__attribute__((used)) static bfd_boolean
ieee_end_class_type (void *p)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  unsigned int nindx;

  assert (info->type_stack != ((void*)0)
   && info->type_stack->type.classdef != ((void*)0));




  if (info->type_stack->type.ignorep)
    return TRUE;

  nindx = info->type_stack->type.classdef->indx;


  if (info->type_stack->type.classdef->vclass != ((void*)0)
      || info->type_stack->type.classdef->ownvptr)
    {
      if (! ieee_change_buffer (info,
    &info->type_stack->type.classdef->pmiscbuf)
   || ! ieee_write_asn (info, nindx, 'z')
   || ! ieee_write_atn65 (info, nindx, "")
   || ! ieee_write_asn (info, nindx,
          info->type_stack->type.classdef->voffset))
 return FALSE;
      if (info->type_stack->type.classdef->ownvptr)
 {
   if (! ieee_write_atn65 (info, nindx, ""))
     return FALSE;
 }
      else
 {
   if (! ieee_write_atn65 (info, nindx,
      info->type_stack->type.classdef->vclass))
     return FALSE;
 }
      if (! ieee_write_asn (info, nindx, 0))
 return FALSE;
      info->type_stack->type.classdef->pmisccount += 5;
    }





  if (! ieee_change_buffer (info, &info->cxx)
      || ! ieee_write_byte (info, (int) ieee_nn_record)
      || ! ieee_write_number (info, nindx)
      || ! ieee_write_id (info, "")
      || ! ieee_write_2bytes (info, (int) ieee_atn_record_enum)
      || ! ieee_write_number (info, nindx)
      || ! ieee_write_number (info, 0)
      || ! ieee_write_number (info, 62)
      || ! ieee_write_number (info, 80)
      || ! ieee_write_number (info,
         info->type_stack->type.classdef->pmisccount))
    return FALSE;

  if (! ieee_append_buffer (info, &info->cxx,
       &info->type_stack->type.classdef->pmiscbuf))
    return FALSE;
  if (! ieee_buffer_emptyp (&info->type_stack->type.classdef->refs))
    {
      if (! ieee_append_buffer (info, &info->cxx,
    &info->type_stack->type.classdef->refs))
 return FALSE;
    }

  return ieee_end_struct_type (p);
}
