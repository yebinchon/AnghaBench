
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct man_viewer_info_list {struct man_viewer_info_list* next; int info; int name; } ;


 struct man_viewer_info_list* man_viewer_info_list ;
 int strdup (char const*) ;
 int strncpy (int ,char const*,size_t) ;
 struct man_viewer_info_list* zalloc (int) ;

__attribute__((used)) static void do_add_man_viewer_info(const char *name,
       size_t len,
       const char *value)
{
 struct man_viewer_info_list *new = zalloc(sizeof(*new) + len + 1);

 strncpy(new->name, name, len);
 new->info = strdup(value);
 new->next = man_viewer_info_list;
 man_viewer_info_list = new;
}
