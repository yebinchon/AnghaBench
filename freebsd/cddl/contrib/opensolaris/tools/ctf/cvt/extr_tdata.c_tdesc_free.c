
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tdesc_t ;


 int tdesc_free_cb (int *,int *) ;

void
tdesc_free(tdesc_t *tdp)
{
 tdesc_free_cb(tdp, ((void*)0));
}
