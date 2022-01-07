
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conv {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
c_conv(const void *a, const void *b)
{

 return (strcmp(((const struct conv *)a)->name,
     ((const struct conv *)b)->name));
}
