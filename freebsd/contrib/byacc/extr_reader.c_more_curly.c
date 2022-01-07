
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cptr ;
 int next_inline () ;

__attribute__((used)) static int
more_curly(void)
{
    char *save = cptr;
    int result = 0;
    int finish = 0;
    do
    {
 switch (next_inline())
 {
 case 0:
 case '\n':
     finish = 1;
     break;
 case 128:
     finish = 1;
     result = 1;
     break;
 }
 ++cptr;
    }
    while (!finish);
    cptr = save;
    return result;
}
