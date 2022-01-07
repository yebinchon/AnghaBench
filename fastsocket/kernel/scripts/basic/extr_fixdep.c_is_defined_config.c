
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int len_config ;
 int memcmp (char const*,char const*,int) ;
 char* str_config ;

__attribute__((used)) static int is_defined_config(const char * name, int len)
{
 const char * pconfig;
 const char * plast = str_config + len_config - len;
 for ( pconfig = str_config + 1; pconfig < plast; pconfig++ ) {
  if (pconfig[ -1] == '\n'
  && pconfig[len] == '\n'
  && !memcmp(pconfig, name, len))
   return 1;
 }
 return 0;
}
