
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umem_nofail_callback_t ;


 int * nofail_cb ;

void umem_nofail_callback(umem_nofail_callback_t *callback)
{
 nofail_cb = callback;
}
