
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error_count ;
 int fprintf (int ,char*,int,char const*) ;
 int stderr ;

__attribute__((used)) static void
error (int line, const char *errmsg)
{
  fprintf (stderr, "test-pexecute:%d: %s\n", line, errmsg);
  ++error_count;
}
