
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;


 scalar_t__ BFD_ENDIAN_BIG ;
 char* REGISTER_NAME (int) ;
 scalar_t__ TARGET_BYTE_ORDER ;
 char* alloca (int) ;
 int current_gdbarch ;
 int error (char*,int,char*) ;
 int frame_register_read (struct frame_info*,int,char*) ;
 int memcpy (char*,char*,int) ;
 int register_size (int ,int) ;

__attribute__((used)) static void
mips_read_fp_register_single (struct frame_info *frame, int regno,
         char *rare_buffer)
{
  int raw_size = register_size (current_gdbarch, regno);
  char *raw_buffer = alloca (raw_size);

  if (!frame_register_read (frame, regno, raw_buffer))
    error ("can't read register %d (%s)", regno, REGISTER_NAME (regno));
  if (raw_size == 8)
    {


      int offset;

      if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
 offset = 4;
      else
 offset = 0;

      memcpy (rare_buffer, raw_buffer + offset, 4);
    }
  else
    {
      memcpy (rare_buffer, raw_buffer, 4);
    }
}
