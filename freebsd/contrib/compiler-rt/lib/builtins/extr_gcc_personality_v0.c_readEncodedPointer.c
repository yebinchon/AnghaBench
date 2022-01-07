
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef uintptr_t uint64_t ;
typedef uintptr_t uint32_t ;
typedef uintptr_t uint16_t ;
typedef uintptr_t int64_t ;
typedef uintptr_t int32_t ;
typedef uintptr_t int16_t ;






 int DW_EH_PE_indirect ;
 int DW_EH_PE_omit ;
 int compilerrt_abort () ;
 uintptr_t readULEB128 (int const**) ;

__attribute__((used)) static uintptr_t readEncodedPointer(const uint8_t **data, uint8_t encoding) {
  const uint8_t *p = *data;
  uintptr_t result = 0;

  if (encoding == DW_EH_PE_omit)
    return 0;


  switch (encoding & 0x0F) {
  case 141:
    result = *((const uintptr_t *)p);
    p += sizeof(uintptr_t);
    break;
  case 128:
    result = readULEB128(&p);
    break;
  case 131:
    result = *((const uint16_t *)p);
    p += sizeof(uint16_t);
    break;
  case 130:
    result = *((const uint32_t *)p);
    p += sizeof(uint32_t);
    break;
  case 129:
    result = *((const uint64_t *)p);
    p += sizeof(uint64_t);
    break;
  case 136:
    result = *((const int16_t *)p);
    p += sizeof(int16_t);
    break;
  case 135:
    result = *((const int32_t *)p);
    p += sizeof(int32_t);
    break;
  case 134:
    result = *((const int64_t *)p);
    p += sizeof(int64_t);
    break;
  case 133:
  default:

    compilerrt_abort();
    break;
  }


  switch (encoding & 0x70) {
  case 141:

    break;
  case 137:
    result += (uintptr_t)(*data);
    break;
  case 132:
  case 139:
  case 138:
  case 140:
  default:

    compilerrt_abort();
    break;
  }


  if (encoding & DW_EH_PE_indirect) {
    result = *((const uintptr_t *)result);
  }

  *data = p;
  return result;
}
