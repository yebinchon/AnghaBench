
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char const*,char const*) ;
 int * fopen64 (char const*,char const*) ;

FILE *
real_fopen (const char *filename, const char *modes)
{



  return fopen (filename, modes);

}
