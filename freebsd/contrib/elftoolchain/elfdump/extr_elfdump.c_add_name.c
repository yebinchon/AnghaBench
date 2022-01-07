
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spec_name {char const* name; } ;
struct elfdump {int snl; } ;


 int STAILQ_INSERT_TAIL (int *,struct spec_name*,int ) ;
 scalar_t__ find_name (struct elfdump*,char const*) ;
 struct spec_name* malloc (int) ;
 int sn_list ;
 int warn (char*) ;

__attribute__((used)) static void
add_name(struct elfdump *ed, const char *name)
{
 struct spec_name *sn;

 if (find_name(ed, name))
  return;
 if ((sn = malloc(sizeof(*sn))) == ((void*)0)) {
  warn("malloc failed");
  return;
 }
 sn->name = name;
 STAILQ_INSERT_TAIL(&ed->snl, sn, sn_list);
}
