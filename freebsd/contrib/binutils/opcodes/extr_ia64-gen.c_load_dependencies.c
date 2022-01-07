
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IA64_DV_RAW ;
 int IA64_DV_WAR ;
 int IA64_DV_WAW ;
 scalar_t__ debug ;
 int load_depfile (char*,int ) ;
 int printf (char*,int) ;
 int rdepslen ;

__attribute__((used)) static void
load_dependencies (void)
{
  load_depfile ("ia64-raw.tbl", IA64_DV_RAW);
  load_depfile ("ia64-waw.tbl", IA64_DV_WAW);
  load_depfile ("ia64-war.tbl", IA64_DV_WAR);

  if (debug)
    printf ("%d RAW/WAW/WAR dependencies\n", rdepslen);
}
