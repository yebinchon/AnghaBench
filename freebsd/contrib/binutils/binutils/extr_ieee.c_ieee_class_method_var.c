
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee_handle {TYPE_3__* type_stack; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef unsigned int bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_5__ {TYPE_1__* classdef; } ;
struct TYPE_6__ {TYPE_2__ type; } ;
struct TYPE_4__ {char const* method; unsigned int indx; unsigned int voffset; scalar_t__ pmisccount; int pmiscbuf; } ;


 unsigned int CXXFLAGS_CONST ;
 unsigned int CXXFLAGS_STATIC ;
 unsigned int CXXFLAGS_VOLATILE ;
 int FALSE ;
 int TRUE ;
 int assert (int) ;
 int ieee_change_buffer (struct ieee_handle*,int *) ;
 int ieee_pop_unused_type (struct ieee_handle*) ;
 unsigned int ieee_vis_to_flags (int) ;
 int ieee_write_asn (struct ieee_handle*,unsigned int,unsigned int) ;
 int ieee_write_atn65 (struct ieee_handle*,unsigned int,char const*) ;

__attribute__((used)) static bfd_boolean
ieee_class_method_var (struct ieee_handle *info, const char *physname,
         enum debug_visibility visibility,
         bfd_boolean staticp, bfd_boolean constp,
         bfd_boolean volatilep, bfd_vma voffset,
         bfd_boolean context)
{
  unsigned int flags;
  unsigned int nindx;
  bfd_boolean virtual;




  ieee_pop_unused_type (info);



  if (context)
    ieee_pop_unused_type (info);

  assert (info->type_stack != ((void*)0)
   && info->type_stack->type.classdef != ((void*)0)
   && info->type_stack->type.classdef->method != ((void*)0));

  flags = ieee_vis_to_flags (visibility);




  if (staticp)
    flags |= CXXFLAGS_STATIC;
  if (constp)
    flags |= CXXFLAGS_CONST;
  if (volatilep)
    flags |= CXXFLAGS_VOLATILE;

  nindx = info->type_stack->type.classdef->indx;

  virtual = context || voffset > 0;

  if (! ieee_change_buffer (info,
       &info->type_stack->type.classdef->pmiscbuf)
      || ! ieee_write_asn (info, nindx, virtual ? 'v' : 'm')
      || ! ieee_write_asn (info, nindx, flags)
      || ! ieee_write_atn65 (info, nindx,
        info->type_stack->type.classdef->method)
      || ! ieee_write_atn65 (info, nindx, physname))
    return FALSE;

  if (virtual)
    {
      if (voffset > info->type_stack->type.classdef->voffset)
 info->type_stack->type.classdef->voffset = voffset;
      if (! ieee_write_asn (info, nindx, voffset))
 return FALSE;
      ++info->type_stack->type.classdef->pmisccount;
    }

  if (! ieee_write_asn (info, nindx, 0))
    return FALSE;

  info->type_stack->type.classdef->pmisccount += 5;

  return TRUE;
}
