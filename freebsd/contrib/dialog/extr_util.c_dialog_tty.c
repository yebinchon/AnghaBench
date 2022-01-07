
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atoi (char*) ;
 char* getenv (char*) ;

__attribute__((used)) static char *
dialog_tty(void)
{
    char *result = getenv("DIALOG_TTY");
    if (result != 0 && atoi(result) == 0)
 result = 0;
    return result;
}
