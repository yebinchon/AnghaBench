
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;
typedef int loff_t ;



void unmap_mapping_range(struct address_space *mapping,
    loff_t const holebegin, loff_t const holelen,
    int even_cows)
{
}
