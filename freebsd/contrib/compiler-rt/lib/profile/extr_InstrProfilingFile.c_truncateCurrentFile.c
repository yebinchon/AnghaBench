
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ MergePoolSize; } ;
typedef int FILE ;


 scalar_t__ COMPILER_RT_ALLOCA (int) ;
 int createProfileDir (char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 char* getCurFilename (char*,int ) ;
 int getCurFilenameLength () ;
 TYPE_1__ lprofCurFilename ;

__attribute__((used)) static void truncateCurrentFile(void) {
  const char *Filename;
  char *FilenameBuf;
  FILE *File;
  int Length;

  Length = getCurFilenameLength();
  FilenameBuf = (char *)COMPILER_RT_ALLOCA(Length + 1);
  Filename = getCurFilename(FilenameBuf, 0);
  if (!Filename)
    return;



  if (lprofCurFilename.MergePoolSize)
    return;

  createProfileDir(Filename);


  File = fopen(Filename, "w");
  if (!File)
    return;
  fclose(File);
}
