
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SBC8360_ENABLE ;
 int outb (int ,int ) ;

__attribute__((used)) static void sbc8360_stop(void)
{

 outb(0, SBC8360_ENABLE);
}
