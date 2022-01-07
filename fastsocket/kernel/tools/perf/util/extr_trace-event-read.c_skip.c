
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZ ;
 int read_or_die (char*,int) ;

__attribute__((used)) static void skip(int size)
{
 char buf[BUFSIZ];
 int r;

 while (size) {
  r = size > BUFSIZ ? BUFSIZ : size;
  read_or_die(buf, r);
  size -= r;
 };
}
