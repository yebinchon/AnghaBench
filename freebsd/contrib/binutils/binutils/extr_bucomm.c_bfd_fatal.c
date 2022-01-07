
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfd_nonfatal (char const*) ;
 int xexit (int) ;

void
bfd_fatal (const char *string)
{
  bfd_nonfatal (string);
  xexit (1);
}
