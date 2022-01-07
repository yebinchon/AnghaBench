
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ flag_dump_noaddr ;
 scalar_t__ flag_dump_unnumbered ;
 int fprintf (int *,char*,char const*,...) ;

void
dump_addr (FILE *file, const char *prefix, void *addr)
{
  if (flag_dump_noaddr || flag_dump_unnumbered)
    fprintf (file, "%s#", prefix);
  else
    fprintf (file, "%s%p", prefix, addr);
}
