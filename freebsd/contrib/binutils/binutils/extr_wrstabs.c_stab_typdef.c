
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_hash_entry {long index; unsigned int size; } ;
struct stab_write_handle {long type_index; int typedef_hash; TYPE_1__* type_stack; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {long index; unsigned int size; } ;


 int FALSE ;
 int N_LSYM ;
 int TRUE ;
 int _ (char*) ;
 int bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int free (char*) ;
 int non_fatal (int ,int ) ;
 int sprintf (char*,char*,char const*,...) ;
 char* stab_pop_type (struct stab_write_handle*) ;
 int stab_write_symbol (struct stab_write_handle*,int ,int ,int ,char*) ;
 struct string_hash_entry* string_hash_lookup (int *,char const*,int ,int ) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static bfd_boolean
stab_typdef (void *p, const char *name)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  long index;
  unsigned int size;
  char *s, *buf;
  struct string_hash_entry *h;

  index = info->type_stack->index;
  size = info->type_stack->size;
  s = stab_pop_type (info);

  buf = (char *) xmalloc (strlen (name) + strlen (s) + 20);

  if (index > 0)
    sprintf (buf, "%s:t%s", name, s);
  else
    {
      index = info->type_index;
      ++info->type_index;
      sprintf (buf, "%s:t%ld=%s", name, index, s);
    }

  free (s);

  if (! stab_write_symbol (info, N_LSYM, 0, 0, buf))
    return FALSE;

  free (buf);

  h = string_hash_lookup (&info->typedef_hash, name, TRUE, FALSE);
  if (h == ((void*)0))
    {
      non_fatal (_("string_hash_lookup failed: %s"),
   bfd_errmsg (bfd_get_error ()));
      return FALSE;
    }



  h->index = index;
  h->size = size;

  return TRUE;
}
