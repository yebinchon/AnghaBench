
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Usage (char*) ;
 char* _ (char*) ;
 int arg_rest (char**) ;
 scalar_t__ isOption (char*) ;
 int sprintf (char*,char const*,int,int) ;

__attribute__((used)) static int
howmany_tags(char *argv[], int group)
{
    int result = 0;
    int have;
    char temp[80];

    while (argv[0] != 0) {
 if (isOption(argv[0]))
     break;
 if ((have = arg_rest(argv)) < group) {
     const char *format = _("Expected %d arguments, found only %d");
     sprintf(temp, format, group, have);
     Usage(temp);
 } else if ((have % group) != 0) {
     const char *format = _("Expected %d arguments, found extra %d");
     sprintf(temp, format, group, (have % group));
     Usage(temp);
 }

 argv += have;
 result += (have / group);
    }

    return result;
}
