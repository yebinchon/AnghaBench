
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_entry {struct neon_typed_alias* neon; } ;
struct neon_typed_alias {int dummy; } ;


 int _ (char*) ;
 int first_error (int ) ;
 struct reg_entry* insert_reg_alias (char*,int,int) ;
 struct neon_typed_alias* xmalloc (int) ;

__attribute__((used)) static void
insert_neon_reg_alias (char *str, int number, int type,
                       struct neon_typed_alias *atype)
{
  struct reg_entry *reg = insert_reg_alias (str, number, type);

  if (!reg)
    {
      first_error (_("attempt to redefine typed alias"));
      return;
    }

  if (atype)
    {
      reg->neon = xmalloc (sizeof (struct neon_typed_alias));
      *reg->neon = *atype;
    }
}
