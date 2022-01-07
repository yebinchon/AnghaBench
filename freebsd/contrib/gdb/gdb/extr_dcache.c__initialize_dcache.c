
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_info (char*,int ,char*) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int class_support ;
 int dcache_enabled_p ;
 int dcache_info ;
 int setlist ;
 int showlist ;
 int var_boolean ;

void
_initialize_dcache (void)
{
  add_show_from_set
    (add_set_cmd ("remotecache", class_support, var_boolean,
    (char *) &dcache_enabled_p,
    "Set cache use for remote targets.\nWhen on, use data caching for remote targets.  For many remote targets\nthis option can offer better throughput for reading target memory.\nUnfortunately, gdb does not currently know anything about volatile\nregisters and thus data caching will produce incorrect results with\nvolatile registers are in use.  By default, this option is off.",






    &setlist),
     &showlist);

  add_info ("dcache", dcache_info,
     "Print information on the dcache performance.");

}
