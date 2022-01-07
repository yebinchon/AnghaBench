
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_attrib {int hwbreak; int cache; int verify; int width; int mode; } ;
typedef int CORE_ADDR ;


 int MEM_RO ;
 int MEM_RW ;
 int MEM_WIDTH_16 ;
 int MEM_WIDTH_32 ;
 int MEM_WIDTH_64 ;
 int MEM_WIDTH_8 ;
 int MEM_WO ;
 int create_mem_region (int,int,struct mem_attrib*) ;
 struct mem_attrib default_mem_attrib ;
 int error (char*,...) ;
 int error_no_arg (char*) ;
 int parse_and_eval_address (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static void
mem_command (char *args, int from_tty)
{
  CORE_ADDR lo, hi;
  char *tok;
  struct mem_attrib attrib;

  if (!args)
    error_no_arg ("No mem");

  tok = strtok (args, " \t");
  if (!tok)
    error ("no lo address");
  lo = parse_and_eval_address (tok);

  tok = strtok (((void*)0), " \t");
  if (!tok)
    error ("no hi address");
  hi = parse_and_eval_address (tok);

  attrib = default_mem_attrib;
  while ((tok = strtok (((void*)0), " \t")) != ((void*)0))
    {
      if (strcmp (tok, "rw") == 0)
 attrib.mode = MEM_RW;
      else if (strcmp (tok, "ro") == 0)
 attrib.mode = MEM_RO;
      else if (strcmp (tok, "wo") == 0)
 attrib.mode = MEM_WO;

      else if (strcmp (tok, "8") == 0)
 attrib.width = MEM_WIDTH_8;
      else if (strcmp (tok, "16") == 0)
 {
   if ((lo % 2 != 0) || (hi % 2 != 0))
     error ("region bounds not 16 bit aligned");
   attrib.width = MEM_WIDTH_16;
 }
      else if (strcmp (tok, "32") == 0)
 {
   if ((lo % 4 != 0) || (hi % 4 != 0))
     error ("region bounds not 32 bit aligned");
   attrib.width = MEM_WIDTH_32;
 }
      else if (strcmp (tok, "64") == 0)
 {
   if ((lo % 8 != 0) || (hi % 8 != 0))
     error ("region bounds not 64 bit aligned");
   attrib.width = MEM_WIDTH_64;
 }
      else if (strcmp (tok, "cache") == 0)
 attrib.cache = 1;
      else if (strcmp (tok, "nocache") == 0)
 attrib.cache = 0;
      else
 error ("unknown attribute: %s", tok);
    }

  create_mem_region (lo, hi, &attrib);
}
