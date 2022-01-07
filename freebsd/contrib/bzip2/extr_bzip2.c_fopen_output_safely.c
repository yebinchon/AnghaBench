
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IntNative ;
typedef int FILE ;
typedef int Char ;


 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int S_IRUSR ;
 int S_IWUSR ;
 int close (int) ;
 int * fdopen (int,char const*) ;
 int * fopen (int *,char const*) ;
 int open (int *,int,int) ;

__attribute__((used)) static
FILE* fopen_output_safely ( Char* name, const char* mode )
{
   return fopen(name, mode);

}
