
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_gen_spec {int dummy; } ;
typedef int name ;


 int ENOMEM ;
 int add_control (struct hda_gen_spec*,int,char*,int,unsigned long) ;
 int snprintf (char*,int,char*,char const*,char const*,char const*) ;

__attribute__((used)) static int add_control_with_pfx(struct hda_gen_spec *spec, int type,
    const char *pfx, const char *dir,
    const char *sfx, int cidx, unsigned long val)
{
 char name[44];
 snprintf(name, sizeof(name), "%s %s %s", pfx, dir, sfx);
 if (!add_control(spec, type, name, cidx, val))
  return -ENOMEM;
 return 0;
}
