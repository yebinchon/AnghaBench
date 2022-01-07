
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * WriterCtx; int Write; } ;
typedef TYPE_1__ ProfDataWriter ;
typedef int FILE ;


 int fileWriter ;

__attribute__((used)) static void initFileWriter(ProfDataWriter *This, FILE *File) {
  This->Write = fileWriter;
  This->WriterCtx = File;
}
