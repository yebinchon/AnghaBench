
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output {int dummy; } ;


 int outc (int,struct output*) ;

void
outcslow(int c, struct output *file)
{
 outc(c, file);
}
