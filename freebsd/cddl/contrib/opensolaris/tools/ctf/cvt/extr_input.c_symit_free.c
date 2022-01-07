
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symit_data_t ;


 int free (int *) ;

void
symit_free(symit_data_t *si)
{
 free(si);
}
