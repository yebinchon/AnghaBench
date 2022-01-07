
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int dummy; } ;


 int pr_err (char*,char const*) ;
 struct strlist* strlist__new (int,char const*) ;

__attribute__((used)) static int setup_list(struct strlist **list, const char *list_str,
        const char *list_name)
{
 if (list_str == ((void*)0))
  return 0;

 *list = strlist__new(1, list_str);
 if (!*list) {
  pr_err("problems parsing %s list\n", list_name);
  return -1;
 }
 return 0;
}
