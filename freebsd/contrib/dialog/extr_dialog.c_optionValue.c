
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Usage (char*) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ strtol (char*,char**,int ) ;

__attribute__((used)) static int
optionValue(char **argv, int *num)
{
    int next = *num + 1;
    char *src = argv[next];
    char *tmp = 0;
    int result = 0;

    if (src != 0) {
 result = (int) strtol(src, &tmp, 0);
 if (tmp == 0 || *tmp != 0)
     src = 0;
    }

    if (src == 0) {
 char temp[80];
 sprintf(temp, "Expected a numeric-parameter for %.20s", argv[*num]);
 Usage(temp);
    }
    *num = next;
    return result;
}
