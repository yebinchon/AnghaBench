
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fputs (char*,int ) ;
 int stderr ;

int
main()
{
  fputs("mk-amd-map: This system does not support hashed database files\n", stderr);
  exit(1);
}
