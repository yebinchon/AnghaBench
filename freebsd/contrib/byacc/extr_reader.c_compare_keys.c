
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keyword {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
compare_keys(const void *a, const void *b)
{
    const struct keyword *p = (const struct keyword *)a;
    const struct keyword *q = (const struct keyword *)b;
    return strcmp(p->name, q->name);
}
