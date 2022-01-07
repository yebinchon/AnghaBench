
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
c_arg(const void *a, const void *b)
{

 return (strcmp(((const struct arg *)a)->name,
     ((const struct arg *)b)->name));
}
