
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* string; } ;
struct ieee_name_type_hash_entry {struct ieee_name_type* types; TYPE_1__ root; } ;
struct ieee_buflist {int dummy; } ;
struct TYPE_5__ {scalar_t__ localp; char* name; scalar_t__ ignorep; struct ieee_buflist strdef; int indx; } ;
struct ieee_name_type {unsigned int id; scalar_t__ kind; TYPE_2__ type; struct ieee_name_type* next; } ;
struct ieee_handle {TYPE_3__* type_stack; int type_indx; int tags; } ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_6__ {TYPE_2__ type; } ;


 scalar_t__ DEBUG_KIND_ILLEGAL ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int ieee_define_named_type (struct ieee_handle*,char const*,int ,unsigned int,scalar_t__,scalar_t__,struct ieee_buflist*) ;
 int ieee_init_buffer (struct ieee_handle*,struct ieee_buflist*) ;
 struct ieee_name_type_hash_entry* ieee_name_type_hash_lookup (int *,char const*,scalar_t__,scalar_t__) ;
 int ieee_write_number (struct ieee_handle*,unsigned int) ;
 int memset (struct ieee_name_type*,int ,int) ;
 int sprintf (char*,char*,unsigned int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bfd_boolean
ieee_start_struct_type (void *p, const char *tag, unsigned int id,
   bfd_boolean structp, unsigned int size)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  bfd_boolean localp, ignorep;
  bfd_boolean copy;
  char ab[20];
  const char *look;
  struct ieee_name_type_hash_entry *h;
  struct ieee_name_type *nt, *ntlook;
  struct ieee_buflist strdef;

  localp = FALSE;
  ignorep = FALSE;




  if (tag != ((void*)0))
    {
      look = tag;
      copy = FALSE;
    }
  else
    {
      sprintf (ab, "__anon%u", id);
      look = ab;
      copy = TRUE;
    }



  h = ieee_name_type_hash_lookup (&info->tags, look, TRUE, copy);
  if (h == ((void*)0))
    return FALSE;

  nt = ((void*)0);
  for (ntlook = h->types; ntlook != ((void*)0); ntlook = ntlook->next)
    {
      if (ntlook->id == id)
 nt = ntlook;
      else if (! ntlook->type.localp)
 {



   localp = TRUE;
 }
    }

  if (nt != ((void*)0))
    {
      assert (localp == nt->type.localp);
      if (nt->kind == DEBUG_KIND_ILLEGAL && ! localp)
 {


   ignorep = TRUE;
 }
    }
  else
    {
      nt = (struct ieee_name_type *) xmalloc (sizeof *nt);
      memset (nt, 0, sizeof *nt);
      nt->id = id;
      nt->type.name = h->root.string;
      nt->next = h->types;
      h->types = nt;
      nt->type.indx = info->type_indx;
      ++info->type_indx;
    }

  nt->kind = DEBUG_KIND_ILLEGAL;

  if (! ieee_init_buffer (info, &strdef)
      || ! ieee_define_named_type (info, tag, nt->type.indx, size, TRUE,
       localp, &strdef)
      || ! ieee_write_number (info, structp ? 'S' : 'U')
      || ! ieee_write_number (info, size))
    return FALSE;

  if (! ignorep)
    {
      const char *hold;




      hold = nt->type.name;
      nt->type = info->type_stack->type;
      nt->type.name = hold;
    }

  info->type_stack->type.name = tag;
  info->type_stack->type.strdef = strdef;
  info->type_stack->type.ignorep = ignorep;

  return TRUE;
}
