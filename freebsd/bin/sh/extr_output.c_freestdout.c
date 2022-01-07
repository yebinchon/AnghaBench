
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; int nextc; } ;


 TYPE_1__ output ;

void
freestdout(void)
{
 output.nextc = output.buf;
}
