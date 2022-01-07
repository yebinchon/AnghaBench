
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_elf_version_expr_head {int mask; struct bfd_elf_version_expr* remaining; scalar_t__ htab; } ;
struct bfd_elf_version_expr {char const* symbol; int mask; char* pattern; struct bfd_elf_version_expr* next; } ;




 int BFD_ELF_VERSION_JAVA_TYPE ;
 int DMGL_ANSI ;
 int DMGL_JAVA ;
 int DMGL_PARAMS ;
 char* cplus_demangle (char const*,int) ;
 scalar_t__ fnmatch (char*,char const*,int ) ;
 int free (char*) ;
 struct bfd_elf_version_expr* htab_find (scalar_t__,struct bfd_elf_version_expr*) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static struct bfd_elf_version_expr *
lang_vers_match (struct bfd_elf_version_expr_head *head,
   struct bfd_elf_version_expr *prev,
   const char *sym)
{
  const char *cxx_sym = sym;
  const char *java_sym = sym;
  struct bfd_elf_version_expr *expr = ((void*)0);

  if (head->mask & 129)
    {
      cxx_sym = cplus_demangle (sym, DMGL_PARAMS | DMGL_ANSI);
      if (!cxx_sym)
 cxx_sym = sym;
    }
  if (head->mask & BFD_ELF_VERSION_JAVA_TYPE)
    {
      java_sym = cplus_demangle (sym, DMGL_JAVA);
      if (!java_sym)
 java_sym = sym;
    }

  if (head->htab && (prev == ((void*)0) || prev->symbol))
    {
      struct bfd_elf_version_expr e;

      switch (prev ? prev->mask : 0)
 {
   case 0:
     if (head->mask & 128)
       {
  e.symbol = sym;
  expr = htab_find (head->htab, &e);
  while (expr && strcmp (expr->symbol, sym) == 0)
    if (expr->mask == 128)
      goto out_ret;
    else
      expr = expr->next;
       }

   case 128:
     if (head->mask & 129)
       {
  e.symbol = cxx_sym;
  expr = htab_find (head->htab, &e);
  while (expr && strcmp (expr->symbol, cxx_sym) == 0)
    if (expr->mask == 129)
      goto out_ret;
    else
      expr = expr->next;
       }

   case 129:
     if (head->mask & BFD_ELF_VERSION_JAVA_TYPE)
       {
  e.symbol = java_sym;
  expr = htab_find (head->htab, &e);
  while (expr && strcmp (expr->symbol, java_sym) == 0)
    if (expr->mask == BFD_ELF_VERSION_JAVA_TYPE)
      goto out_ret;
    else
      expr = expr->next;
       }

   default:
     break;
 }
    }


  if (prev == ((void*)0) || prev->symbol)
    expr = head->remaining;
  else
    expr = prev->next;
  for (; expr; expr = expr->next)
    {
      const char *s;

      if (!expr->pattern)
 continue;

      if (expr->pattern[0] == '*' && expr->pattern[1] == '\0')
 break;

      if (expr->mask == BFD_ELF_VERSION_JAVA_TYPE)
 s = java_sym;
      else if (expr->mask == 129)
 s = cxx_sym;
      else
 s = sym;
      if (fnmatch (expr->pattern, s, 0) == 0)
 break;
    }

out_ret:
  if (cxx_sym != sym)
    free ((char *) cxx_sym);
  if (java_sym != sym)
    free ((char *) java_sym);
  return expr;
}
