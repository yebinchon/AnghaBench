
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cisco_kod_close ;
 int cisco_kod_open ;
 int cisco_kod_request ;
 int ecos_kod_close ;
 int ecos_kod_open ;
 int ecos_kod_request ;
 int error (char*,int ) ;
 int gdb_kod_close ;
 int gdb_kod_open ;
 int gdb_kod_request ;
 int operating_system ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void
load_kod_library (char *lib)
{
   if (! strcmp (lib, "cisco"))
    {
      gdb_kod_open = cisco_kod_open;
      gdb_kod_request = cisco_kod_request;
      gdb_kod_close = cisco_kod_close;
    }
  else
    error ("Unknown operating system: %s\n", operating_system);
}
