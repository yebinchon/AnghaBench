
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char const*,char*) ;
 int * getProfileFile () ;

__attribute__((used)) static FILE *getFileObject(const char *OutputName) {
  FILE *File;
  File = getProfileFile();
  if (File != ((void*)0)) {
    return File;
  }

  return fopen(OutputName, "ab");
}
