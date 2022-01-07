
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (unsigned char,int) ;

__attribute__((used)) static void trix_write(int addr, int data)
{
 outb(((unsigned char) addr), 0x390);
 outb(((unsigned char) data), 0x391);
}
