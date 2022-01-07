
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee_handle {TYPE_3__* type_stack; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef int bfd_boolean ;
struct TYPE_5__ {TYPE_1__* classdef; } ;
struct TYPE_6__ {TYPE_2__ type; } ;
struct TYPE_4__ {unsigned int indx; int pmisccount; int pmiscbuf; } ;


 unsigned int CXXFLAGS_STATIC ;
 int FALSE ;
 int TRUE ;
 int assert (int) ;
 int ieee_change_buffer (struct ieee_handle*,int *) ;
 int ieee_pop_unused_type (struct ieee_handle*) ;
 unsigned int ieee_vis_to_flags (int) ;
 int ieee_write_asn (struct ieee_handle*,unsigned int,unsigned int) ;
 int ieee_write_atn65 (struct ieee_handle*,unsigned int,char const*) ;

__attribute__((used)) static bfd_boolean
ieee_class_static_member (void *p, const char *name, const char *physname,
     enum debug_visibility visibility)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  unsigned int flags;
  unsigned int nindx;




  ieee_pop_unused_type (info);

  assert (info->type_stack != ((void*)0)
   && info->type_stack->type.classdef != ((void*)0));

  flags = ieee_vis_to_flags (visibility);
  flags |= CXXFLAGS_STATIC;

  nindx = info->type_stack->type.classdef->indx;

  if (! ieee_change_buffer (info, &info->type_stack->type.classdef->pmiscbuf)
      || ! ieee_write_asn (info, nindx, 'd')
      || ! ieee_write_asn (info, nindx, flags)
      || ! ieee_write_atn65 (info, nindx, name)
      || ! ieee_write_atn65 (info, nindx, physname))
    return FALSE;
  info->type_stack->type.classdef->pmisccount += 4;

  return TRUE;
}
