
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pss_confdata ;


 int pss_write (int *,int) ;

__attribute__((used)) static void set_treble(pss_confdata *devc, int level)
{
 int vol = (((0xfd - 0xf0) * level)/100L) + 0xf0;
 pss_write(devc, 0x0010);
 pss_write(devc, vol | 0x0300);
}
