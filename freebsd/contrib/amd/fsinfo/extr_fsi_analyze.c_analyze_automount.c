
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dict_ent ;
struct TYPE_3__ {int a_name; int a_volname; int a_ioloc; int * a_mounted; } ;
typedef TYPE_1__ automount ;


 scalar_t__ STREQ (int ,int ) ;
 int * find_volname (int ) ;
 int lerror (int ,char*,int ,...) ;

__attribute__((used)) static void
analyze_automount(automount *ap)
{
  dict_ent *de = find_volname(ap->a_volname);

  if (de) {
    ap->a_mounted = de;
  } else {
    if (STREQ(ap->a_volname, ap->a_name))
      lerror(ap->a_ioloc, "unknown volname %s automounted", ap->a_volname);
    else
      lerror(ap->a_ioloc, "unknown volname %s automounted on %s", ap->a_volname, ap->a_name);
  }
}
