
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_ptr ;
typedef int FILE ;


 int fseek (int *,int ,int) ;
 int fseeko (int *,int ,int) ;
 int fseeko64 (int *,int ,int) ;

int
real_fseek (FILE *file, file_ptr offset, int whence)
{





  return fseek (file, offset, whence);

}
