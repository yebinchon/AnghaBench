
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atexit (int ) ;
 int pidfile_cleanup ;

__attribute__((used)) static int
register_atexit_handler(void)
{
 static bool done = 0;

 if (!done) {
  if (atexit(pidfile_cleanup) < 0)
   return -1;
  done = 1;
 }

 return 0;
}
