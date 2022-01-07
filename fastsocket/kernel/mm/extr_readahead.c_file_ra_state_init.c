
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_ra_state {int prev_pos; int ra_pages; } ;
struct address_space {TYPE_1__* backing_dev_info; } ;
struct TYPE_2__ {int ra_pages; } ;



void
file_ra_state_init(struct file_ra_state *ra, struct address_space *mapping)
{
 ra->ra_pages = mapping->backing_dev_info->ra_pages;
 ra->prev_pos = -1;
}
