
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage_chain(void)
{
 fprintf(stderr,
"usage: brssl chain [ options ] file...\n");
 fprintf(stderr,
"options:\n");
 fprintf(stderr,
"   -q            suppress verbose messages\n");
}
