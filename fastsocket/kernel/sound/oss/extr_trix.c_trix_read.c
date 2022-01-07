
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char inb (int) ;
 int outb (unsigned char,int) ;

__attribute__((used)) static unsigned char trix_read(int addr)
{
 outb(((unsigned char) addr), 0x390);
 return inb(0x391);
}
