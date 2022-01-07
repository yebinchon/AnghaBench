
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P_CHOICE ;
 int P_COMMENT ;
 int P_DEFAULT ;
 int P_MENU ;
 int P_PROMPT ;
 int P_UNKNOWN ;
 int bzero (char*,int) ;
 int printf (char*,char*) ;
 int strcpy (char*,char*) ;

const char *dbg_print_ptype(int val)
{
 static char buf[256];

 bzero(buf, 256);

 if (val == P_UNKNOWN)
  strcpy(buf, "unknown");
 if (val == P_PROMPT)
  strcpy(buf, "prompt");
 if (val == P_COMMENT)
  strcpy(buf, "comment");
 if (val == P_MENU)
  strcpy(buf, "menu");
 if (val == P_DEFAULT)
  strcpy(buf, "default");
 if (val == P_CHOICE)
  strcpy(buf, "choice");





 return buf;
}
