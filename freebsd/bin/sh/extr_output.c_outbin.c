
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output {int dummy; } ;


 int outc (int ,struct output*) ;

void
outbin(const void *data, size_t len, struct output *file)
{
 const char *p;

 p = data;
 while (len-- > 0)
  outc(*p++, file);
}
