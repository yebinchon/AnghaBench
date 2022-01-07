
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* first_break ;
 int fprintf (int ,char*,char*,char*,unsigned long,...) ;
 char* name ;
 scalar_t__ sbrk (int ) ;
 int stderr ;
 int xexit (int) ;

void
xmalloc_failed (size_t size)
{
  fprintf (stderr,
    "\n%s%sout of memory allocating %lu bytes\n",
    name, *name ? ": " : "",
    (unsigned long) size);

  xexit (1);
}
