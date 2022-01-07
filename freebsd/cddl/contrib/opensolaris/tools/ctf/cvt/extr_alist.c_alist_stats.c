
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int al_elements; } ;
typedef TYPE_1__ alist_t ;


 int hash_stats (int ,int) ;
 int printf (char*) ;

void
alist_stats(alist_t *alist, int verbose)
{
 printf("Alist statistics\n");
 hash_stats(alist->al_elements, verbose);
}
