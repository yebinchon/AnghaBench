
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uart401_devc ;


 int DATAPORT ;
 int inb (int ) ;

__attribute__((used)) static int uart401_read(uart401_devc * devc)
{
 return inb(DATAPORT);
}
