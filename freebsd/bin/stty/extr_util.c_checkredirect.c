
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_rdev; } ;


 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 int fstat (int ,struct stat*) ;
 scalar_t__ isatty (int ) ;
 int warnx (char*) ;

void
checkredirect(void)
{
 struct stat sb1, sb2;

 if (isatty(STDOUT_FILENO) && isatty(STDERR_FILENO) &&
     !fstat(STDOUT_FILENO, &sb1) && !fstat(STDERR_FILENO, &sb2) &&
     (sb1.st_rdev != sb2.st_rdev))
warnx("stdout appears redirected, but stdin is the control descriptor");
}
