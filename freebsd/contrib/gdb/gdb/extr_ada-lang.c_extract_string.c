
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int target_read_memory (scalar_t__,char*,int) ;

void
extract_string (CORE_ADDR addr, char *buf)
{
  int char_index = 0;



  do
    {
      target_read_memory (addr + char_index * sizeof (char),
     buf + char_index * sizeof (char), sizeof (char));
      char_index++;
    }
  while (buf[char_index - 1] != '\000');
}
