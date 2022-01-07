
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io ;
 int outb (int,int ) ;

__attribute__((used)) static inline void eurwdt_lock_chip(void)
{
 outb(0xaa, io);
}
