
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uart401_devc ;


 int DATAPORT ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static void uart401_write(uart401_devc * devc, unsigned char byte)
{
 outb((byte), DATAPORT);
}
