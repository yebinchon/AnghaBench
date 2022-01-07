
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGEST ;


 void* alloca (int ) ;
 int current_gdbarch ;
 int deprecated_read_register_gen (int,void*) ;
 int extract_signed_integer (void*,int ) ;
 int register_size (int ,int) ;

__attribute__((used)) static LONGEST
read_signed_register (int regnum)
{
  void *buf = alloca (register_size (current_gdbarch, regnum));
  deprecated_read_register_gen (regnum, buf);
  return (extract_signed_integer
   (buf, register_size (current_gdbarch, regnum)));
}
