
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pid_file ;
 int unlink (int ) ;

__attribute__((used)) static void
term(void)
{
 (void)unlink(pid_file);
}
