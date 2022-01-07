
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usage () ;
 int warnx (char*) ;

__attribute__((used)) static void
badformat(void)
{
 warnx("illegal time format");
 usage();
}
