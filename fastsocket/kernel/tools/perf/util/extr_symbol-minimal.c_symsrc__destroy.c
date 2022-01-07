
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symsrc {int fd; int name; } ;


 int close (int ) ;
 int free (int ) ;

void symsrc__destroy(struct symsrc *ss)
{
 free(ss->name);
 close(ss->fd);
}
