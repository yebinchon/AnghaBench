
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct man_viewer_info_list {char const* info; int name; struct man_viewer_info_list* next; } ;


 struct man_viewer_info_list* man_viewer_info_list ;
 int strcasecmp (char const*,int ) ;

__attribute__((used)) static const char *get_man_viewer_info(const char *name)
{
 struct man_viewer_info_list *viewer;

 for (viewer = man_viewer_info_list; viewer; viewer = viewer->next) {
  if (!strcasecmp(name, viewer->name))
   return viewer->info;
 }
 return ((void*)0);
}
