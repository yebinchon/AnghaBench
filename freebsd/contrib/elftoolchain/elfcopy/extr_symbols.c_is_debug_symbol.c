
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GELF_ST_TYPE (unsigned char) ;
 scalar_t__ STT_FILE ;
 scalar_t__ STT_SECTION ;

__attribute__((used)) static int
is_debug_symbol(unsigned char st_info)
{

 if (GELF_ST_TYPE(st_info) == STT_SECTION ||
     GELF_ST_TYPE(st_info) == STT_FILE)
  return (1);

 return (0);
}
