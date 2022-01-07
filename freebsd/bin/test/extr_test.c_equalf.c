
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;


 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static int
equalf (const char *f1, const char *f2)
{
 struct stat b1, b2;

 return (stat (f1, &b1) == 0 &&
  stat (f2, &b2) == 0 &&
  b1.st_dev == b2.st_dev &&
  b1.st_ino == b2.st_ino);
}
