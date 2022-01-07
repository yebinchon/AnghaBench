
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 scalar_t__ errno ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 char* xstrerror (int) ;

__attribute__((used)) static void
fatal_error (int line, const char *errmsg, int err)
{
  fprintf (stderr, "test-pexecute:%d: %s", line, errmsg);
  if (errno != 0)
    fprintf (stderr, ": %s", xstrerror (err));
  fprintf (stderr, "\n");
  exit (EXIT_FAILURE);
}
