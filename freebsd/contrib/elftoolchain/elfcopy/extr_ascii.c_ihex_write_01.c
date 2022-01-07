
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ihex_write (int,int,int ,int ,int *,int ) ;

__attribute__((used)) static void
ihex_write_01(int ofd)
{

 ihex_write(ofd, 1, 0, 0, ((void*)0), 0);
}
