
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMDPORT ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static void uart6850_cmd(unsigned char cmd)
{
 outb(cmd, COMDPORT);
}
