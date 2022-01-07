
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* cr16_b_cond_tab ;

__attribute__((used)) static char *
getccstring (unsigned cc)
{
  return (char *) cr16_b_cond_tab[cc];
}
