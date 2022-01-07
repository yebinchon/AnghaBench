
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;


 int FUSE_MAX_PAGES_PER_REQ ;
 int PAGE_SHIFT ;
 int round_up (int ,int) ;

__attribute__((used)) static inline loff_t fuse_round_up(loff_t off)
{
 return round_up(off, FUSE_MAX_PAGES_PER_REQ << PAGE_SHIFT);
}
