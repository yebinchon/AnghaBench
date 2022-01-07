
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int XLOG_ERROR ;
 int * fopen (char const*,char const*) ;
 int plog (int ,char*,char const*) ;

__attribute__((used)) static FILE *
sun2amd_open(const char *path, const char *mode)
{
  FILE *retval = ((void*)0);

  if ((retval = fopen(path,mode)) == ((void*)0)) {
    plog(XLOG_ERROR,"could not open file %s",path);
  }

  return retval;
}
