
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flowi {int dummy; } ;
typedef int flow_compare_t ;


 int BUILD_BUG_ON (int) ;

__attribute__((used)) static int flow_key_compare(struct flowi *key1, struct flowi *key2)
{
 flow_compare_t *k1, *k1_lim, *k2;
 const int n_elem = sizeof(struct flowi) / sizeof(flow_compare_t);

 BUILD_BUG_ON(sizeof(struct flowi) % sizeof(flow_compare_t));

 k1 = (flow_compare_t *) key1;
 k1_lim = k1 + n_elem;

 k2 = (flow_compare_t *) key2;

 do {
  if (*k1++ != *k2++)
   return 1;
 } while (k1 < k1_lim);

 return 0;
}
