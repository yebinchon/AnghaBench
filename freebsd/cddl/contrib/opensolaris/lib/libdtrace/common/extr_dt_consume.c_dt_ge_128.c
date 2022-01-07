
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static int
dt_ge_128(uint64_t *a, uint64_t *b)
{
 return (a[1] > b[1] || (a[1] == b[1] && a[0] >= b[0]));
}
