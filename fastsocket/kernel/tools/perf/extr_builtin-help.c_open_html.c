
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execl_perf_cmd (char*,char*,char*,char const*,int *) ;

__attribute__((used)) static void open_html(const char *path)
{
 execl_perf_cmd("web--browse", "-c", "help.browser", path, ((void*)0));
}
