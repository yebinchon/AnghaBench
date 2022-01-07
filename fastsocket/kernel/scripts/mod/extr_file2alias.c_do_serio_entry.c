
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_device_id {scalar_t__ type; scalar_t__ proto; scalar_t__ id; scalar_t__ extra; } ;


 int ADD (char*,char*,int,scalar_t__) ;
 scalar_t__ SERIO_ANY ;
 void* TO_NATIVE (scalar_t__) ;
 int add_wildcard (char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int do_serio_entry(const char *filename,
     struct serio_device_id *id, char *alias)
{
 id->type = TO_NATIVE(id->type);
 id->proto = TO_NATIVE(id->proto);
 id->id = TO_NATIVE(id->id);
 id->extra = TO_NATIVE(id->extra);

 strcpy(alias, "serio:");
 ADD(alias, "ty", id->type != SERIO_ANY, id->type);
 ADD(alias, "pr", id->proto != SERIO_ANY, id->proto);
 ADD(alias, "id", id->id != SERIO_ANY, id->id);
 ADD(alias, "ex", id->extra != SERIO_ANY, id->extra);

 add_wildcard(alias);
 return 1;
}
