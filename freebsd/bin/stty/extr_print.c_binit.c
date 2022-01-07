
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ col ;
 char const* label ;
 int printf (char*) ;

__attribute__((used)) static void
binit(const char *lb)
{

 if (col) {
  (void)printf("\n");
  col = 0;
 }
 label = lb;
}
