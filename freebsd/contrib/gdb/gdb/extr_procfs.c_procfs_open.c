
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;

__attribute__((used)) static void
procfs_open (char *args, int from_tty)
{
  error ("Use the \"run\" command to start a Unix child process.");
}
