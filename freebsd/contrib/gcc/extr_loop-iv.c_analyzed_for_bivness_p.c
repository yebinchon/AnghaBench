
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtx_iv {int dummy; } ;
struct biv_entry {struct rtx_iv iv; } ;
typedef int rtx ;


 int REGNO (int ) ;
 int bivs ;
 struct biv_entry* htab_find_with_hash (int ,int ,int ) ;

__attribute__((used)) static bool
analyzed_for_bivness_p (rtx def, struct rtx_iv *iv)
{
  struct biv_entry *biv = htab_find_with_hash (bivs, def, REGNO (def));

  if (!biv)
    return 0;

  *iv = biv->iv;
  return 1;
}
