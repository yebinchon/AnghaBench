
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ _Unwind_Word ;
typedef scalar_t__ _Unwind_Sword ;
typedef int _Unwind_Ptr ;
typedef int _Unwind_Internal_Ptr ;



 unsigned char DW_EH_PE_aligned ;
 unsigned char DW_EH_PE_indirect ;
 unsigned char DW_EH_PE_pcrel ;
 int __gxx_abort () ;
 unsigned char* read_sleb128 (unsigned char const*,scalar_t__*) ;
 unsigned char* read_uleb128 (unsigned char const*,scalar_t__*) ;

__attribute__((used)) static const unsigned char *
read_encoded_value_with_base (unsigned char encoding, _Unwind_Ptr base,
         const unsigned char *p, _Unwind_Ptr *val)
{
  union unaligned
    {
      void *ptr;
      unsigned u2 __attribute__ ((mode (HI)));
      unsigned u4 __attribute__ ((mode (SI)));
      unsigned u8 __attribute__ ((mode (DI)));
      signed s2 __attribute__ ((mode (HI)));
      signed s4 __attribute__ ((mode (SI)));
      signed s8 __attribute__ ((mode (DI)));
    } __attribute__((__packed__));

  const union unaligned *u = (const union unaligned *) p;
  _Unwind_Internal_Ptr result;

  if (encoding == DW_EH_PE_aligned)
    {
      _Unwind_Internal_Ptr a = (_Unwind_Internal_Ptr) p;
      a = (a + sizeof (void *) - 1) & - sizeof(void *);
      result = *(_Unwind_Internal_Ptr *) a;
      p = (const unsigned char *) (_Unwind_Internal_Ptr) (a + sizeof (void *));
    }
  else
    {
      switch (encoding & 0x0f)
 {
 case 136:
   result = (_Unwind_Internal_Ptr) u->ptr;
   p += sizeof (void *);
   break;

 case 128:
   {
     _Unwind_Word tmp;
     p = read_uleb128 (p, &tmp);
     result = (_Unwind_Internal_Ptr) tmp;
   }
   break;

 case 132:
   {
     _Unwind_Sword tmp;
     p = read_sleb128 (p, &tmp);
     result = (_Unwind_Internal_Ptr) tmp;
   }
   break;

 case 131:
   result = u->u2;
   p += 2;
   break;
 case 130:
   result = u->u4;
   p += 4;
   break;
 case 129:
   result = u->u8;
   p += 8;
   break;

 case 135:
   result = u->s2;
   p += 2;
   break;
 case 134:
   result = u->s4;
   p += 4;
   break;
 case 133:
   result = u->s8;
   p += 8;
   break;

 default:
   __gxx_abort ();
 }

      if (result != 0)
 {
   result += ((encoding & 0x70) == DW_EH_PE_pcrel
       ? (_Unwind_Internal_Ptr) u : base);
   if (encoding & DW_EH_PE_indirect)
     result = *(_Unwind_Internal_Ptr *) result;
 }
    }

  *val = result;
  return p;
}
