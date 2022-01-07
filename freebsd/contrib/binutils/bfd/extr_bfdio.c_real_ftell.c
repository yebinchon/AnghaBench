
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_ptr ;
typedef int FILE ;


 int ftell (int *) ;
 int ftello (int *) ;
 int ftello64 (int *) ;

file_ptr
real_ftell (FILE *file)
{





  return ftell (file);

}
