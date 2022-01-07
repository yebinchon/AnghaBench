
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {int ElmSize; int NumElm; scalar_t__ Data; } ;
struct TYPE_5__ {scalar_t__ WriterCtx; } ;
typedef TYPE_1__ ProfDataWriter ;
typedef TYPE_2__ ProfDataIOVec ;
typedef int FILE ;


 int SEEK_CUR ;
 int fseek (int *,int,int ) ;
 int fwrite (scalar_t__,int,int,int *) ;

__attribute__((used)) static uint32_t fileWriter(ProfDataWriter *This, ProfDataIOVec *IOVecs,
                           uint32_t NumIOVecs) {
  uint32_t I;
  FILE *File = (FILE *)This->WriterCtx;
  for (I = 0; I < NumIOVecs; I++) {
    if (IOVecs[I].Data) {
      if (fwrite(IOVecs[I].Data, IOVecs[I].ElmSize, IOVecs[I].NumElm, File) !=
          IOVecs[I].NumElm)
        return 1;
    } else {
      if (fseek(File, IOVecs[I].ElmSize * IOVecs[I].NumElm, SEEK_CUR) == -1)
        return 1;
    }
  }
  return 0;
}
