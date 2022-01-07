
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ CurOffset; int BufferSz; int * BufferStart; scalar_t__ OwnFileWriter; int * FileWriter; } ;
typedef int ProfDataWriter ;
typedef TYPE_1__ ProfBufferIO ;



__attribute__((used)) static void llvmInitBufferIO(ProfBufferIO *BufferIO, ProfDataWriter *FileWriter,
                             uint8_t *Buffer, uint32_t BufferSz) {
  BufferIO->FileWriter = FileWriter;
  BufferIO->OwnFileWriter = 0;
  BufferIO->BufferStart = Buffer;
  BufferIO->BufferSz = BufferSz;
  BufferIO->CurOffset = 0;
}
