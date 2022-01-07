
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uart401_devc ;


 int STATPORT ;
 int inb (int ) ;

__attribute__((used)) static int uart401_status(uart401_devc * devc)
{
 return inb(STATPORT);
}
