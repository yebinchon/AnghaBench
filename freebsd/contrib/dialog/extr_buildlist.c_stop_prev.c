
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ALL_DATA ;


 int prev_item (int *,int,int) ;

__attribute__((used)) static bool
stop_prev(ALL_DATA * all, int choice, int selected)
{
    return (prev_item(all, choice, selected) == choice);
}
