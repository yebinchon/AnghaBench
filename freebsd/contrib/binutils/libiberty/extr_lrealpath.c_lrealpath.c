
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 int CharLowerBuff (char*,scalar_t__) ;
 scalar_t__ GetFullPathName (char const*,int,char*,char**) ;
 int MAX_PATH ;
 int REALPATH_LIMIT ;
 int _PC_PATH_MAX ;
 char* canonicalize_file_name (char const*) ;
 int free (char*) ;
 scalar_t__ malloc (long) ;
 long pathconf (char*,int ) ;
 void* realpath (char const*,char*) ;
 char* strdup (char const*) ;

char *
lrealpath (const char *filename)
{
  return strdup (filename);
}
