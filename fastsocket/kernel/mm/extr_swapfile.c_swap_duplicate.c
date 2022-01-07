
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int __swap_duplicate (int ,int) ;
 int add_swap_count_continuation (int ,int ) ;

int swap_duplicate(swp_entry_t entry)
{
 int err = 0;

 while (!err && __swap_duplicate(entry, 1) == -ENOMEM)
  err = add_swap_count_continuation(entry, GFP_ATOMIC);
 return err;
}
