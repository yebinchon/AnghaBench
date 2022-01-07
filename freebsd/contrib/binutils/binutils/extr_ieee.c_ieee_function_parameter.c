
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee_pending_parm {char const* name; int kind; int type; struct ieee_pending_parm* next; int val; int referencep; } ;
struct ieee_handle {int block_depth; int fnargcount; int fnargs; struct ieee_pending_parm* pending_parms; TYPE_2__* type_stack; } ;
typedef enum debug_parm_kind { ____Placeholder_debug_parm_kind } debug_parm_kind ;
typedef int bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_3__ {int referencep; } ;
struct TYPE_4__ {TYPE_1__ type; } ;


 int FALSE ;
 int TRUE ;
 int assert (int) ;
 int ieee_change_buffer (struct ieee_handle*,int *) ;
 int ieee_pop_type (struct ieee_handle*) ;
 int ieee_write_number (struct ieee_handle*,int ) ;
 int memset (struct ieee_pending_parm*,int ,int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bfd_boolean
ieee_function_parameter (void *p, const char *name, enum debug_parm_kind kind,
    bfd_vma val)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  struct ieee_pending_parm *m, **pm;

  assert (info->block_depth == 1);

  m = (struct ieee_pending_parm *) xmalloc (sizeof *m);
  memset (m, 0, sizeof *m);

  m->next = ((void*)0);
  m->name = name;
  m->referencep = info->type_stack->type.referencep;
  m->type = ieee_pop_type (info);
  m->kind = kind;
  m->val = val;

  for (pm = &info->pending_parms; *pm != ((void*)0); pm = &(*pm)->next)
    ;
  *pm = m;


  if (! ieee_change_buffer (info, &info->fnargs)
      || ! ieee_write_number (info, m->type))
    return FALSE;
  ++info->fnargcount;

  return TRUE;
}
