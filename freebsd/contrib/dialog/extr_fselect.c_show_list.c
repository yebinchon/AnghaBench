
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;


 int display_list (int *) ;
 scalar_t__ find_choice (char*,int *) ;

__attribute__((used)) static bool
show_list(char *target, LIST * list, bool keep)
{
    bool changed = keep || find_choice(target, list);
    display_list(list);
    return changed;
}
