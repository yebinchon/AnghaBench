
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* operand_types; int name; } ;
struct TYPE_4__ {int* types; TYPE_1__ tm; int ** seg; } ;


 int AnyMem ;
 int EsSeg ;
 int _ (char*) ;
 int as_bad (int ,int ,int) ;
 int es ;
 TYPE_2__ i ;

__attribute__((used)) static int
check_string (void)
{
  int mem_op = (i.types[0] & AnyMem) ? 0 : 1;
  if ((i.tm.operand_types[mem_op] & EsSeg) != 0)
    {
      if (i.seg[0] != ((void*)0) && i.seg[0] != &es)
 {
   as_bad (_("`%s' operand %d must use `%%es' segment"),
    i.tm.name,
    mem_op + 1);
   return 0;
 }




      i.seg[0] = i.seg[1];
    }
  else if ((i.tm.operand_types[mem_op + 1] & EsSeg) != 0)
    {
      if (i.seg[1] != ((void*)0) && i.seg[1] != &es)
 {
   as_bad (_("`%s' operand %d must use `%%es' segment"),
    i.tm.name,
    mem_op + 2);
   return 0;
 }
    }
  return 1;
}
