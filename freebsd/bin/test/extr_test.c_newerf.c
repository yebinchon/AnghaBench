
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct stat {TYPE_1__ st_mtim; } ;


 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static int
newerf (const char *f1, const char *f2)
{
 struct stat b1, b2;

 if (stat(f1, &b1) != 0 || stat(f2, &b2) != 0)
  return 0;

 if (b1.st_mtim.tv_sec > b2.st_mtim.tv_sec)
  return 1;
 if (b1.st_mtim.tv_sec < b2.st_mtim.tv_sec)
  return 0;

       return (b1.st_mtim.tv_nsec > b2.st_mtim.tv_nsec);
}
