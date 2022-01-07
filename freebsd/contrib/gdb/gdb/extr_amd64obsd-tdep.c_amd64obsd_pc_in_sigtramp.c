
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 char* alloca (int) ;
 int amd64obsd_page_size ;
 scalar_t__ memcmp (char*,char const*,int) ;
 scalar_t__ target_read_memory (int,char*,int) ;

__attribute__((used)) static int
amd64obsd_pc_in_sigtramp (CORE_ADDR pc, char *name)
{
  CORE_ADDR start_pc = (pc & ~(amd64obsd_page_size - 1));
  const char sigreturn[] =
  {
    0x48, 0xc7, 0xc0,
    0x67, 0x00, 0x00, 0x00,
    0xcd, 0x80
  };
  char *buf;

  if (name)
    return 0;


  buf = alloca (sizeof sigreturn);
  if (target_read_memory (start_pc + 0x7, buf, sizeof sigreturn))
    return 0;


  if (memcmp (buf, sigreturn, sizeof sigreturn))
    return 0;

  return 1;
}
