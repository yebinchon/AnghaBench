
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_LEN ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
widest_line(char **list)
{
    int result = MAX_LEN;
    char *value;

    if (list != 0) {
 while ((value = *list++) != 0) {
     int check = (int) strlen(value);
     if (check > result)
  result = check;
 }
    }
    return result;
}
