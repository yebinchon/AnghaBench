
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Path ;
typedef int Lst ;


 int Dir_Destroy (int *) ;
 scalar_t__ Lst_DeQueue (int ) ;
 int Lst_IsEmpty (int ) ;

void
Dir_ClearPath(Lst path)
{
    Path *p;
    while (!Lst_IsEmpty(path)) {
 p = (Path *)Lst_DeQueue(path);
 Dir_Destroy(p);
    }
}
