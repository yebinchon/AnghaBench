
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee_pending_parm {int kind; struct ieee_pending_parm* next; scalar_t__ referencep; int val; int name; int type; } ;
struct ieee_handle {unsigned int name_indx; struct ieee_pending_parm* pending_parms; int fnname; int vars; TYPE_2__* type_stack; } ;
typedef enum debug_var_kind { ____Placeholder_debug_var_kind } debug_var_kind ;
typedef int bfd_boolean ;
struct TYPE_3__ {scalar_t__ referencep; } ;
struct TYPE_4__ {TYPE_1__ type; } ;


 int DEBUG_LOCAL ;




 int DEBUG_REGISTER ;
 int FALSE ;
 int TRUE ;
 int abort () ;
 int free (struct ieee_pending_parm*) ;
 scalar_t__ ieee_atn_record_enum ;
 int ieee_change_buffer (struct ieee_handle*,int *) ;
 scalar_t__ ieee_nn_record ;
 int ieee_push_type (struct ieee_handle*,int ,int ,int ,int ) ;
 int ieee_variable (void*,int ,int,int ) ;
 int ieee_write_2bytes (struct ieee_handle*,int) ;
 int ieee_write_asn (struct ieee_handle*,unsigned int,unsigned int) ;
 int ieee_write_atn65 (struct ieee_handle*,unsigned int,int ) ;
 int ieee_write_byte (struct ieee_handle*,int) ;
 int ieee_write_id (struct ieee_handle*,char*) ;
 int ieee_write_number (struct ieee_handle*,unsigned int) ;

__attribute__((used)) static bfd_boolean
ieee_output_pending_parms (struct ieee_handle *info)
{
  struct ieee_pending_parm *m;
  unsigned int refcount;

  refcount = 0;
  for (m = info->pending_parms; m != ((void*)0); m = m->next)
    {
      enum debug_var_kind vkind;

      switch (m->kind)
 {
 default:
   abort ();
   return FALSE;
 case 128:
 case 131:
   vkind = DEBUG_LOCAL;
   break;
 case 129:
 case 130:
   vkind = DEBUG_REGISTER;
   break;
 }

      if (! ieee_push_type (info, m->type, 0, FALSE, FALSE))
 return FALSE;
      info->type_stack->type.referencep = m->referencep;
      if (m->referencep)
 ++refcount;
      if (! ieee_variable ((void *) info, m->name, vkind, m->val))
 return FALSE;
    }



  if (refcount > 0)
    {
      unsigned int nindx, varindx;



      nindx = info->name_indx;
      ++info->name_indx;
      if (! ieee_change_buffer (info, &info->vars)
   || ! ieee_write_byte (info, (int) ieee_nn_record)
   || ! ieee_write_number (info, nindx)
   || ! ieee_write_id (info, "")
   || ! ieee_write_2bytes (info, (int) ieee_atn_record_enum)
   || ! ieee_write_number (info, nindx)
   || ! ieee_write_number (info, 0)
   || ! ieee_write_number (info, 62)
   || ! ieee_write_number (info, 80)
   || ! ieee_write_number (info, refcount + 3)
   || ! ieee_write_asn (info, nindx, 'B')
   || ! ieee_write_atn65 (info, nindx, info->fnname)
   || ! ieee_write_asn (info, nindx, 0))
 return FALSE;
      for (m = info->pending_parms, varindx = 1;
    m != ((void*)0);
    m = m->next, varindx++)
 {
   if (m->referencep)
     {
       if (! ieee_write_asn (info, nindx, varindx))
  return FALSE;
     }
 }
    }

  m = info->pending_parms;
  while (m != ((void*)0))
    {
      struct ieee_pending_parm *next;

      next = m->next;
      free (m);
      m = next;
    }

  info->pending_parms = ((void*)0);

  return TRUE;
}
