
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee_modified_type {unsigned int pointer; } ;
struct ieee_handle {TYPE_2__* type_stack; } ;
typedef int bfd_boolean ;
struct TYPE_3__ {unsigned int indx; int localp; } ;
struct TYPE_4__ {TYPE_1__ type; } ;


 int FALSE ;
 int TRUE ;
 int ieee_define_type (struct ieee_handle*,int,int ,int ) ;
 struct ieee_modified_type* ieee_get_modified_info (void*,unsigned int) ;
 unsigned int ieee_pop_type (struct ieee_handle*) ;
 int ieee_push_type (struct ieee_handle*,unsigned int,int,int ,int ) ;
 int ieee_write_number (struct ieee_handle*,unsigned int) ;

__attribute__((used)) static bfd_boolean
ieee_pointer_type (void *p)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  bfd_boolean localp;
  unsigned int indx;
  struct ieee_modified_type *m = ((void*)0);

  localp = info->type_stack->type.localp;
  indx = ieee_pop_type (info);



  if (indx < 32)
    return ieee_push_type (info, indx + 32, 0, TRUE, FALSE);

  if (! localp)
    {
      m = ieee_get_modified_info (p, indx);
      if (m == ((void*)0))
 return FALSE;


      if (m->pointer > 0)
 return ieee_push_type (info, m->pointer, 4, TRUE, FALSE);
    }

  if (! ieee_define_type (info, 4, TRUE, localp)
      || ! ieee_write_number (info, 'P')
      || ! ieee_write_number (info, indx))
    return FALSE;

  if (! localp)
    m->pointer = info->type_stack->type.indx;

  return TRUE;
}
