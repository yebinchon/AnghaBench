
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*,char*,char*) ;

void
print_histogram_header(void)
{
 (void) printf("\n%10s ---- Time Distribution --- %5s %s\n",
     "nsec", "count", "Stack");
}
