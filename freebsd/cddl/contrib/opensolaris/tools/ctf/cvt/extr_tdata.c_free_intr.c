
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t_intr; } ;
typedef TYPE_1__ tdesc_t ;


 int free (int ) ;

__attribute__((used)) static void
free_intr(tdesc_t *tdp)
{
 free(tdp->t_intr);
}
