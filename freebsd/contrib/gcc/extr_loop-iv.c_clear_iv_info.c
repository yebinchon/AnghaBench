
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtx_iv {int dummy; } ;
struct df_ref {int dummy; } ;


 struct df_ref* DF_DEFS_GET (int ,unsigned int) ;
 unsigned int DF_DEFS_SIZE (int ) ;
 struct rtx_iv* DF_REF_IV (struct df_ref*) ;
 int DF_REF_IV_SET (struct df_ref*,int *) ;
 int bivs ;
 int df ;
 int free (struct rtx_iv*) ;
 int htab_empty (int ) ;

__attribute__((used)) static void
clear_iv_info (void)
{
  unsigned i, n_defs = DF_DEFS_SIZE (df);
  struct rtx_iv *iv;
  struct df_ref *def;

  for (i = 0; i < n_defs; i++)
    {
      def = DF_DEFS_GET (df, i);
      iv = DF_REF_IV (def);
      if (!iv)
 continue;
      free (iv);
      DF_REF_IV_SET (def, ((void*)0));
    }

  htab_empty (bivs);
}
