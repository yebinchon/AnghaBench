
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cchar {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
c_cchar(const void *a, const void *b)
{

        return (strcmp(((const struct cchar *)a)->name, ((const struct cchar *)b)->name));
}
