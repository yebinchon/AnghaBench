
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEPRECATED_REGISTER_BYTE (int) ;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int MAX_REGISTER_SIZE ;
 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 char* REGISTER_NAME (int) ;
 int deprecated_read_register_gen (int,char*) ;
 int * deprecated_registers ;
 int memcpy (char*,int *,int) ;

void
deprecated_read_register_bytes (int in_start, char *in_buf, int in_len)
{
  int in_end = in_start + in_len;
  int regnum;
  char reg_buf[MAX_REGISTER_SIZE];




  for (regnum = 0; regnum < NUM_REGS + NUM_PSEUDO_REGS; regnum++)
    {
      int reg_start;
      int reg_end;
      int reg_len;
      int start;
      int end;
      int byte;

      reg_start = DEPRECATED_REGISTER_BYTE (regnum);
      reg_len = DEPRECATED_REGISTER_RAW_SIZE (regnum);
      reg_end = reg_start + reg_len;

      if (reg_end <= in_start || in_end <= reg_start)

 continue;

      if (REGISTER_NAME (regnum) != ((void*)0) && *REGISTER_NAME (regnum) != '\0')

 deprecated_read_register_gen (regnum, reg_buf);
      else







 memcpy (reg_buf, &deprecated_registers[reg_start], reg_len);




      if (in_buf == ((void*)0))
 continue;


      if (reg_start > in_start)
 start = reg_start;
      else
 start = in_start;


      if (reg_end < in_end)
 end = reg_end;
      else
 end = in_end;


      for (byte = start; byte < end; byte++)
 {
   in_buf[byte - in_start] = reg_buf[byte - reg_start];
 }
    }
}
