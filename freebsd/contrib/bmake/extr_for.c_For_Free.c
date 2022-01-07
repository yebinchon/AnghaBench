
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* parse_buf; int items; int vars; int buf; } ;
typedef TYPE_1__ For ;


 int Buf_Destroy (int *,int ) ;
 int TRUE ;
 int free (TYPE_1__*) ;
 int strlist_clean (int *) ;

__attribute__((used)) static void
For_Free(For *arg)
{
    Buf_Destroy(&arg->buf, TRUE);
    strlist_clean(&arg->vars);
    strlist_clean(&arg->items);
    free(arg->parse_buf);

    free(arg);
}
