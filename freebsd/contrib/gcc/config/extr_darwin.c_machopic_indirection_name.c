
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int rtx ;
struct TYPE_2__ {char const* ptr_name; int stub_p; int used; int symbol; } ;
typedef TYPE_1__ machopic_indirection ;


 char* IDENTIFIER_POINTER (scalar_t__) ;
 scalar_t__ IDENTIFIER_TRANSPARENT_ALIAS (scalar_t__) ;
 int INSERT ;
 char* NON_LAZY_POINTER_SUFFIX ;
 char* STUB_SUFFIX ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 char* XSTR (int ,int ) ;
 char* alloca (int) ;
 scalar_t__ ggc_alloc (int) ;
 scalar_t__ htab_create_ggc (int,int ,int ,int *) ;
 void** htab_find_slot_with_hash (scalar_t__,char*,int ,int ) ;
 int htab_hash_string (char*) ;
 int machopic_indirection_eq ;
 int machopic_indirection_hash ;
 scalar_t__ machopic_indirections ;
 scalar_t__ maybe_get_identifier (char const*) ;
 int name_needs_quotes (char const*) ;
 int sprintf (char*,char*,char const*,char const*,char const*,char const*,char const*) ;
 int strlen (char const*) ;
 char* user_label_prefix ;
 char const* xstrdup (char*) ;

const char *
machopic_indirection_name (rtx sym_ref, bool stub_p)
{
  char *buffer;
  const char *name = XSTR (sym_ref, 0);
  size_t namelen = strlen (name);
  machopic_indirection *p;
  void ** slot;
  bool saw_star = 0;
  bool needs_quotes;
  const char *suffix;
  const char *prefix = user_label_prefix;
  const char *quote = "";
  tree id;

  id = maybe_get_identifier (name);
  if (id)
    {
      tree id_orig = id;

      while (IDENTIFIER_TRANSPARENT_ALIAS (id))
 id = TREE_CHAIN (id);
      if (id != id_orig)
 {
   name = IDENTIFIER_POINTER (id);
   namelen = strlen (name);
 }
    }

  if (name[0] == '*')
    {
      saw_star = 1;
      prefix = "";
      ++name;
      --namelen;
    }

  needs_quotes = name_needs_quotes (name);
  if (needs_quotes)
    {
      quote = "\"";
    }

  if (stub_p)
    suffix = STUB_SUFFIX;
  else
    suffix = NON_LAZY_POINTER_SUFFIX;

  buffer = alloca (strlen ("&L")
     + strlen (prefix)
     + namelen
     + strlen (suffix)
     + 2 * strlen (quote)
     + 1 );


  sprintf (buffer, "&%sL%s%s%s%s", quote, prefix, name, suffix, quote);

  if (!machopic_indirections)
    machopic_indirections = htab_create_ggc (37,
          machopic_indirection_hash,
          machopic_indirection_eq,
                       ((void*)0));

  slot = htab_find_slot_with_hash (machopic_indirections, buffer,
       htab_hash_string (buffer), INSERT);
  if (*slot)
    {
      p = (machopic_indirection *) *slot;
    }
  else
    {
      p = (machopic_indirection *) ggc_alloc (sizeof (machopic_indirection));
      p->symbol = sym_ref;
      p->ptr_name = xstrdup (buffer);
      p->stub_p = stub_p;
      p->used = 0;
      *slot = p;
    }

  return p->ptr_name;
}
