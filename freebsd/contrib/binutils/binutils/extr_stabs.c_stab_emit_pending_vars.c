
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_pending_var {struct stab_pending_var* next; int val; int kind; int type; int name; } ;
struct stab_handle {struct stab_pending_var* pending; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int debug_record_variable (void*,int ,int ,int ,int ) ;
 int free (struct stab_pending_var*) ;

__attribute__((used)) static bfd_boolean
stab_emit_pending_vars (void *dhandle, struct stab_handle *info)
{
  struct stab_pending_var *v;

  v = info->pending;
  while (v != ((void*)0))
    {
      struct stab_pending_var *next;

      if (! debug_record_variable (dhandle, v->name, v->type, v->kind, v->val))
 return FALSE;

      next = v->next;
      free (v);
      v = next;
    }

  info->pending = ((void*)0);

  return TRUE;
}
