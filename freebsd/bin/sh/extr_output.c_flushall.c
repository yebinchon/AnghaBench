
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errout ;
 int flushout (int *) ;
 int output ;

void
flushall(void)
{
 flushout(&output);
 flushout(&errout);
}
