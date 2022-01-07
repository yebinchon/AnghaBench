
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ cut ;
 int pindent (scalar_t__) ;
 int printf (char*) ;

__attribute__((used)) static u_int
close_node(u_int n, u_int level)
{
 while (n--) {
  pindent(level);
  level--;
  if (level >= cut)
   printf(")\n");
 }
 return (level);
}
