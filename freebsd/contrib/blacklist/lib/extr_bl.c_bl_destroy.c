
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bl_t ;


 int bl_reset (int ,int) ;
 int free (int ) ;

void
bl_destroy(bl_t b)
{
 bl_reset(b, 0);
 free(b);
}
