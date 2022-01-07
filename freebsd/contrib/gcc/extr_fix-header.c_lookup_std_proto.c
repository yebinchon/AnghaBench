
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fn_decl {int fname; } ;


 int HASH_SIZE ;
 int gcc_assert (int) ;
 size_t* hash_tab ;
 int hashstr (char const*,int) ;
 struct fn_decl* std_protos ;
 scalar_t__ strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,int) ;

__attribute__((used)) static struct fn_decl *
lookup_std_proto (const char *name, int name_length)
{
  int i = hashstr (name, name_length) % HASH_SIZE;
  int i0 = i;
  for (;;)
    {
      struct fn_decl *fn;
      if (hash_tab[i] == 0)
 return ((void*)0);
      fn = &std_protos[hash_tab[i]];
      if ((int) strlen (fn->fname) == name_length
   && strncmp (fn->fname, name, name_length) == 0)
 return fn;
      i = (i+1) % HASH_SIZE;
      gcc_assert (i != i0);
    }
}
