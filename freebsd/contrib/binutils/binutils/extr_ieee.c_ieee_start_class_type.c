
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee_buflist {int dummy; } ;
struct ieee_type_class {unsigned int indx; int pmisccount; char const* vclass; scalar_t__ ownvptr; struct ieee_buflist pmiscbuf; } ;
struct ieee_handle {unsigned int name_indx; TYPE_2__* type_stack; } ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_3__ {char* name; struct ieee_type_class* classdef; } ;
struct TYPE_4__ {TYPE_1__ type; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int assert (int ) ;
 int ieee_change_buffer (struct ieee_handle*,struct ieee_buflist*) ;
 int ieee_init_buffer (struct ieee_handle*,struct ieee_buflist*) ;
 int ieee_pop_type (struct ieee_handle*) ;
 int ieee_start_struct_type (void*,char const*,unsigned int,scalar_t__,unsigned int) ;
 int ieee_write_asn (struct ieee_handle*,unsigned int,char) ;
 int ieee_write_atn65 (struct ieee_handle*,unsigned int,char const*) ;
 int memset (struct ieee_type_class*,int ,int) ;
 int sprintf (char*,char*,unsigned int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bfd_boolean
ieee_start_class_type (void *p, const char *tag, unsigned int id,
         bfd_boolean structp, unsigned int size,
         bfd_boolean vptr, bfd_boolean ownvptr)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  const char *vclass;
  struct ieee_buflist pmiscbuf;
  unsigned int indx;
  struct ieee_type_class *classdef;






  if (tag == ((void*)0))
    {
      char *t;

      t = (char *) xmalloc (20);
      sprintf (t, "__anon%u", id);
      tag = t;
    }




  vclass = ((void*)0);
  if (vptr && ! ownvptr)
    {
      vclass = info->type_stack->type.name;
      assert (vclass != ((void*)0));


      (void) ieee_pop_type (info);
    }

  if (! ieee_start_struct_type (p, tag, id, structp, size))
    return FALSE;

  indx = info->name_indx;
  ++info->name_indx;




  if (! ieee_init_buffer (info, &pmiscbuf)
      || ! ieee_change_buffer (info, &pmiscbuf)
      || ! ieee_write_asn (info, indx, 'T')
      || ! ieee_write_asn (info, indx, structp ? 'o' : 'u')
      || ! ieee_write_atn65 (info, indx, tag))
    return FALSE;

  classdef = (struct ieee_type_class *) xmalloc (sizeof *classdef);
  memset (classdef, 0, sizeof *classdef);

  classdef->indx = indx;
  classdef->pmiscbuf = pmiscbuf;
  classdef->pmisccount = 3;
  classdef->vclass = vclass;
  classdef->ownvptr = ownvptr;

  info->type_stack->type.classdef = classdef;

  return TRUE;
}
