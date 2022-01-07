
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ii_name; } ;
typedef TYPE_1__ iidesc_t ;


 int hash_name (int,scalar_t__) ;

int
iidesc_hash(int nbuckets, void *arg)
{
 iidesc_t *ii = arg;
 int h = 0;

 if (ii->ii_name)
  return (hash_name(nbuckets, ii->ii_name));

 return (h);
}
