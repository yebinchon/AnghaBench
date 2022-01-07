
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char DW_EH_PE_omit ;



 int __gxx_abort () ;

__attribute__((used)) static unsigned int
size_of_encoded_value (unsigned char encoding)
{
  if (encoding == DW_EH_PE_omit)
    return 0;

  switch (encoding & 0x07)
    {
    case 131:
      return sizeof (void *);
    case 130:
      return 2;
    case 129:
      return 4;
    case 128:
      return 8;
    }
  __gxx_abort ();
}
