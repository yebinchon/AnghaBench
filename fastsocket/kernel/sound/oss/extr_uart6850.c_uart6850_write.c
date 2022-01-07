
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DATAPORT ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static void uart6850_write(unsigned char byte)
{
 outb(byte, DATAPORT);
}
