
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;

int
dlg_ordinate(const char *s)
{
    int result = atoi(s);
    if (result > 0)
 --result;
    else
 result = 0;
    return result;
}
