
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlg_exiterr (char*,char const*) ;
 int handle_leaks () ;

__attribute__((used)) static void
Usage(const char *msg)
{
    handle_leaks();
    dlg_exiterr("Error: %s.\nUse --help to list options.\n\n", msg);
}
