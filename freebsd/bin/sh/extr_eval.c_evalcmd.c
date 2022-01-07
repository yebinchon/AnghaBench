
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STARTSTACKSTR (char*) ;
 int STPUTC (char,char*) ;
 int STPUTS (char*,char*) ;
 int builtin_flags ;
 int evalstring (char*,int ) ;
 int exitstatus ;
 char* grabstackstr (char*) ;

int
evalcmd(int argc, char **argv)
{
        char *p;
        char *concat;
        char **ap;

        if (argc > 1) {
                p = argv[1];
                if (argc > 2) {
                        STARTSTACKSTR(concat);
                        ap = argv + 2;
                        for (;;) {
                                STPUTS(p, concat);
                                if ((p = *ap++) == ((void*)0))
                                        break;
                                STPUTC(' ', concat);
                        }
                        STPUTC('\0', concat);
                        p = grabstackstr(concat);
                }
                evalstring(p, builtin_flags);
        } else
                exitstatus = 0;
        return exitstatus;
}
