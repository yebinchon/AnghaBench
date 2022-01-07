
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfd_nonfatal (char const*) ;
 int exit_status ;

__attribute__((used)) static void
nonfatal (const char *msg)
{
  bfd_nonfatal (msg);
  exit_status = 1;
}
