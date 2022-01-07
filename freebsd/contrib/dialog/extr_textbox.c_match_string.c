
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MY_OBJ ;


 char* get_line (int *) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static bool
match_string(MY_OBJ * obj, char *string)
{
    char *match = get_line(obj);
    return strstr(match, string) != 0;
}
