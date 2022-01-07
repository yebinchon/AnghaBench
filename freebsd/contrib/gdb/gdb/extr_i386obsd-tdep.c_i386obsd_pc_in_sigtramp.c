
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 char* alloca (int) ;
 int i386bsd_pc_in_sigtramp (int,char*) ;
 int i386obsd_page_size ;
 scalar_t__ memcmp (char*,char const*,int) ;
 scalar_t__ target_read_memory (int,char*,int) ;

__attribute__((used)) static int
i386obsd_pc_in_sigtramp (CORE_ADDR pc, char *name)
{
  CORE_ADDR start_pc = (pc & ~(i386obsd_page_size - 1));
  const char sigreturn[] =
  {
    0xb8,
    0x67, 0x00, 0x00, 0x00,
    0xcd, 0x80
  };
  char *buf;





  if (name && name[0] != '<')
    return 0;


  buf = alloca (sizeof sigreturn);
  if (target_read_memory (start_pc + 0x14, buf, sizeof sigreturn))
    return 0;


  if (memcmp (buf, sigreturn, sizeof sigreturn) == 0)
    return 1;


  return i386bsd_pc_in_sigtramp (pc, name);
}
