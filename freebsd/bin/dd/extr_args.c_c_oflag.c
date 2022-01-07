
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oflag {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
c_oflag(const void *a, const void *b)
{

 return (strcmp(((const struct oflag *)a)->name,
     ((const struct oflag *)b)->name));
}
