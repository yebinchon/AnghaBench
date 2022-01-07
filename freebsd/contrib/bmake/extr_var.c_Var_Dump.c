
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int context; } ;
typedef int Hash_Search ;
typedef int Hash_Entry ;
typedef TYPE_1__ GNode ;


 int * Hash_EnumFirst (int *,int *) ;
 int * Hash_EnumNext (int *) ;
 int Hash_GetValue (int *) ;
 int VarPrintVar (int ) ;

void
Var_Dump(GNode *ctxt)
{
    Hash_Search search;
    Hash_Entry *h;

    for (h = Hash_EnumFirst(&ctxt->context, &search);
  h != ((void*)0);
  h = Hash_EnumNext(&search)) {
     VarPrintVar(Hash_GetValue(h));
    }
}
