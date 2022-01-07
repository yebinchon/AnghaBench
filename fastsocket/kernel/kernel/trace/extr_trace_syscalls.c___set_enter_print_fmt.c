
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_metadata {int nb_args; char** args; } ;


 int LEN_OR_ZERO ;
 scalar_t__ snprintf (char*,int ,char*,...) ;

__attribute__((used)) static
int __set_enter_print_fmt(struct syscall_metadata *entry, char *buf, int len)
{
 int i;
 int pos = 0;




 pos += snprintf(buf + pos, (len ? len - pos : 0), "\"");
 for (i = 0; i < entry->nb_args; i++) {
  pos += snprintf(buf + pos, (len ? len - pos : 0), "%s: 0x%%0%zulx%s",
    entry->args[i], sizeof(unsigned long),
    i == entry->nb_args - 1 ? "" : ", ");
 }
 pos += snprintf(buf + pos, (len ? len - pos : 0), "\"");

 for (i = 0; i < entry->nb_args; i++) {
  pos += snprintf(buf + pos, (len ? len - pos : 0),
    ", ((unsigned long)(REC->%s))", entry->args[i]);
 }




 return pos;
}
