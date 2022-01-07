
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;





 int S_IFMT ;


 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 scalar_t__ f_slash ;
 int putchar (char) ;

__attribute__((used)) static int
printtype(u_int mode)
{

 if (f_slash) {
  if ((mode & S_IFMT) == 132) {
   (void)putchar('/');
   return (1);
  }
  return (0);
 }

 switch (mode & S_IFMT) {
 case 132:
  (void)putchar('/');
  return (1);
 case 131:
  (void)putchar('|');
  return (1);
 case 130:
  (void)putchar('@');
  return (1);
 case 129:
  (void)putchar('=');
  return (1);
 case 128:
  (void)putchar('%');
  return (1);
 default:
  break;
 }
 if (mode & (S_IXUSR | S_IXGRP | S_IXOTH)) {
  (void)putchar('*');
  return (1);
 }
 return (0);
}
