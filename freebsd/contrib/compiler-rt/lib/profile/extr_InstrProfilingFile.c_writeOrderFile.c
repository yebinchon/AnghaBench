
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int FILE ;


 int * FreeHook ;
 int PROF_WARN (char*,char const*) ;
 int * __llvm_profile_begin_orderfile () ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free ;
 int orderFileWriter (int *,int const*) ;
 int setupIOBuffer () ;

__attribute__((used)) static int writeOrderFile(const char *OutputName) {
  int RetVal;
  FILE *OutputFile;

  OutputFile = fopen(OutputName, "w");

  if (!OutputFile) {
    PROF_WARN("can't open file with mode ab: %s\n", OutputName);
    return -1;
  }

  FreeHook = &free;
  setupIOBuffer();
  const uint32_t *DataBegin = __llvm_profile_begin_orderfile();
  RetVal = orderFileWriter(OutputFile, DataBegin);

  fclose(OutputFile);
  return RetVal;
}
