
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* types; } ;
struct ieee_info {TYPE_1__ types; } ;
typedef int * debug_type ;
typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_4__ {int * type; } ;


 int FALSE ;
 int TRUE ;
 int ieee_alloc_type (struct ieee_info*,int,int ) ;
 int * ieee_builtin_type (struct ieee_info*,int const*,int) ;
 int ieee_read_number (struct ieee_info*,int const**,int*) ;

__attribute__((used)) static bfd_boolean
ieee_read_type_index (struct ieee_info *info, const bfd_byte **pp,
        debug_type *ptype)
{
  const bfd_byte *start;
  bfd_vma indx;

  start = *pp;

  if (! ieee_read_number (info, pp, &indx))
    return FALSE;

  if (indx < 256)
    {
      *ptype = ieee_builtin_type (info, start, indx);
      if (*ptype == ((void*)0))
 return FALSE;
      return TRUE;
    }

  indx -= 256;
  if (! ieee_alloc_type (info, indx, TRUE))
    return FALSE;

  *ptype = info->types.types[indx].type;

  return TRUE;
}
