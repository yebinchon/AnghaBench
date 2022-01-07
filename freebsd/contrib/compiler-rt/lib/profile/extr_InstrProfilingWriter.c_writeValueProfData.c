
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __llvm_profile_data ;
typedef int VPDataReaderType ;
typedef int ProfDataWriter ;
typedef int ProfBufferIO ;


 scalar_t__ lprofBufferIOFlush (int *) ;
 int * lprofCreateBufferIO (int *) ;
 int lprofDeleteBufferIO (int *) ;
 scalar_t__ writeOneValueProfData (int *,int *,int const*) ;

__attribute__((used)) static int writeValueProfData(ProfDataWriter *Writer,
                              VPDataReaderType *VPDataReader,
                              const __llvm_profile_data *DataBegin,
                              const __llvm_profile_data *DataEnd) {
  ProfBufferIO *BufferIO;
  const __llvm_profile_data *DI = 0;

  if (!VPDataReader)
    return 0;

  BufferIO = lprofCreateBufferIO(Writer);

  for (DI = DataBegin; DI < DataEnd; DI++) {
    if (writeOneValueProfData(BufferIO, VPDataReader, DI))
      return -1;
  }

  if (lprofBufferIOFlush(BufferIO) != 0)
    return -1;
  lprofDeleteBufferIO(BufferIO);

  return 0;
}
