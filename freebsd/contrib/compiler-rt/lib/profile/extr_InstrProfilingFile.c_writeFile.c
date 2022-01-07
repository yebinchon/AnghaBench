
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ProfDataWriter ;
typedef int FILE ;


 int * FreeHook ;
 int * VPMergeHook ;
 scalar_t__ doMerging () ;
 int fclose (int *) ;
 int fflush (int *) ;
 int free ;
 int * getFileObject (char const*) ;
 int * getProfileFile () ;
 int initFileWriter (int *,int *) ;
 int lprofGetVPDataReader () ;
 int lprofMergeValueProfData ;
 int lprofUnlockFileHandle (int *) ;
 int lprofWriteData (int *,int ,int) ;
 int * openFileForMerging (char const*,int*) ;
 int setupIOBuffer () ;

__attribute__((used)) static int writeFile(const char *OutputName) {
  int RetVal;
  FILE *OutputFile;

  int MergeDone = 0;
  VPMergeHook = &lprofMergeValueProfData;
  if (doMerging())
    OutputFile = openFileForMerging(OutputName, &MergeDone);
  else
    OutputFile = getFileObject(OutputName);

  if (!OutputFile)
    return -1;

  FreeHook = &free;
  setupIOBuffer();
  ProfDataWriter fileWriter;
  initFileWriter(&fileWriter, OutputFile);
  RetVal = lprofWriteData(&fileWriter, lprofGetVPDataReader(), MergeDone);

  if (OutputFile == getProfileFile()) {
    fflush(OutputFile);
    if (doMerging()) {
      lprofUnlockFileHandle(OutputFile);
    }
  } else {
    fclose(OutputFile);
  }

  return RetVal;
}
