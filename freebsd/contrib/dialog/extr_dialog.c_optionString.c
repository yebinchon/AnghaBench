
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Usage (char*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static char *
optionString(char **argv, int *num)
{
    int next = *num + 1;
    char *result = argv[next];
    if (result == 0) {
 char temp[80];
 sprintf(temp, "Expected a string-parameter for %.20s", argv[*num]);
 Usage(temp);
    }
    *num = next;
    return result;
}
