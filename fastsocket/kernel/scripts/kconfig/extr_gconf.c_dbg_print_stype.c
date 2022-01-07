
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_BOOLEAN ;
 int S_HEX ;
 int S_INT ;
 int S_OTHER ;
 int S_STRING ;
 int S_TRISTATE ;
 int S_UNKNOWN ;
 int bzero (char*,int) ;
 int printf (char*,char*) ;
 int strcpy (char*,char*) ;

const char *dbg_print_stype(int val)
{
 static char buf[256];

 bzero(buf, 256);

 if (val == S_UNKNOWN)
  strcpy(buf, "unknown");
 if (val == S_BOOLEAN)
  strcpy(buf, "boolean");
 if (val == S_TRISTATE)
  strcpy(buf, "tristate");
 if (val == S_INT)
  strcpy(buf, "int");
 if (val == S_HEX)
  strcpy(buf, "hex");
 if (val == S_STRING)
  strcpy(buf, "string");
 if (val == S_OTHER)
  strcpy(buf, "other");





 return buf;
}
