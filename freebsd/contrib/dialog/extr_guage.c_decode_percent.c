
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int UCH (char) ;
 scalar_t__ isspace (int ) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static int
decode_percent(char *buffer)
{
    char *tmp = 0;
    long value = strtol(buffer, &tmp, 10);

    if (tmp != 0 && (*tmp == 0 || isspace(UCH(*tmp))) && value >= 0) {
 return TRUE;
    }
    return FALSE;
}
