
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int ihex_write (int,int,int ,int ,int *,int) ;

__attribute__((used)) static void
ihex_write_04(int ofd, uint16_t addr)
{

 ihex_write(ofd, 4, 0, addr, ((void*)0), 2);
}
