
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Context {int dummy; } ;
typedef int _Unwind_Ptr ;


 int base_of_encoded_value (unsigned char,struct _Unwind_Context*) ;
 unsigned char const* read_encoded_value_with_base (unsigned char,int ,unsigned char const*,int *) ;

__attribute__((used)) static inline const unsigned char *
read_encoded_value (struct _Unwind_Context *context, unsigned char encoding,
      const unsigned char *p, _Unwind_Ptr *val)
{
  return read_encoded_value_with_base (encoding,
  base_of_encoded_value (encoding, context),
  p, val);
}
