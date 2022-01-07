
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DATAPORT ;
 int inb (int ) ;

__attribute__((used)) static int uart6850_read(void)
{
 return inb(DATAPORT);
}
