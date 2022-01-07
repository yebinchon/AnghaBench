
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lithium_t ;


 int ad1843_DA1F ;
 int ad1843_write_bits (int *,int *,int) ;

__attribute__((used)) static void ad1843_shutdown_dac(lithium_t *lith)
{
 ad1843_write_bits(lith, &ad1843_DA1F, 1);
}
