
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TABLE_SIZE ;
 int assert (int ) ;

__attribute__((used)) static int
hash(const char *name)
{
    const char *s;
    int c, k;

    assert(name && *name);
    s = name;
    k = *s;
    while ((c = *++s) != 0)
 k = (31 * k + c) & (TABLE_SIZE - 1);

    return (k);
}
