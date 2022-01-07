
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oor_ip ;
typedef int oor_brl ;


 int oor_branch_size ;

void
bfd_elfNN_ia64_after_parse (int itanium)
{
  oor_branch_size = itanium ? sizeof (oor_ip) : sizeof (oor_brl);
}
