
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,char const*) ;

void comedi_perror(const char *message)
{
 printk("%s: unknown error\n", message);
}
