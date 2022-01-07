
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int data_sections ;
 int head_sections ;
 int init_data_sections ;
 int init_exit_sections ;
 int init_sections ;
 int linker_symbols ;
 scalar_t__ match (char const*,int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;
 int symbol_white_list ;

__attribute__((used)) static int secref_whitelist(const char *fromsec, const char *fromsym,
       const char *tosec, const char *tosym)
{

 if (match(tosec, init_data_sections) &&
     match(fromsec, data_sections) &&
     (strncmp(fromsym, "__param", strlen("__param")) == 0))
  return 0;


 if (match(tosec, init_exit_sections) &&
     match(fromsec, data_sections) &&
     match(fromsym, symbol_white_list))
  return 0;


 if (match(fromsec, head_sections) &&
     match(tosec, init_sections))
  return 0;


 if (match(tosym, linker_symbols))
  return 0;

 return 1;
}
