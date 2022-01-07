
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int FILE ;


 scalar_t__ INSTR_ORDER_FILE_BUFFER_SIZE ;
 scalar_t__ fwrite (int const*,int,scalar_t__,int *) ;

__attribute__((used)) static uint32_t orderFileWriter(FILE *File, const uint32_t *DataStart) {
  if (fwrite(DataStart, sizeof(uint32_t), INSTR_ORDER_FILE_BUFFER_SIZE, File) !=
      INSTR_ORDER_FILE_BUFFER_SIZE)
    return 1;
  return 0;
}
