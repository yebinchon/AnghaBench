
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uart401_devc ;


 int COMDPORT ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static void uart401_cmd(uart401_devc * devc, unsigned char cmd)
{
 outb((cmd), COMDPORT);
}
