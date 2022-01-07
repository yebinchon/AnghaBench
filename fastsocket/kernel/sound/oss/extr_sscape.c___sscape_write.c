
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ODIE_ADDR ;
 int ODIE_DATA ;
 int PORT (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static void __sscape_write(int reg, int data)
{
 outb(reg, PORT(ODIE_ADDR));
 outb(data, PORT(ODIE_DATA));
}
