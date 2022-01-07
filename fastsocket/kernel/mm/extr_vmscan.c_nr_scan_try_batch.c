
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long SWAP_CLUSTER_MAX ;

__attribute__((used)) static unsigned long nr_scan_try_batch(unsigned long nr_to_scan,
           unsigned long *nr_saved_scan)
{
 unsigned long nr;

 *nr_saved_scan += nr_to_scan;
 nr = *nr_saved_scan;

 if (nr >= SWAP_CLUSTER_MAX)
  *nr_saved_scan = 0;
 else
  nr = 0;

 return nr;
}
