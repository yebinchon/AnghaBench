
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_watch {char* path; } ;



char *audit_watch_path(struct audit_watch *watch)
{
 return watch->path;
}
