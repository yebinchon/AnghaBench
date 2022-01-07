
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int go () ;

__attribute__((used)) static void
handle(int sig)
{
 go();
 exit(0);
}
