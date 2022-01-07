
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STATPORT ;
 int inb (int ) ;

__attribute__((used)) static int uart6850_status(void)
{
 return inb(STATPORT);
}
