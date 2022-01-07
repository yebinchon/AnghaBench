
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
typedef int armag ;
struct TYPE_3__ {int path; } ;
typedef TYPE_1__ GNode ;


 int FALSE ;
 int O_RDONLY ;
 int close (int) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int open (int ,int ) ;
 int read (int,char*,int) ;

int
Arch_IsLib(GNode *gn)
{
    static const char armag[] = "!<arch>\n";
    char buf[sizeof(armag)-1];
    int fd;

    if ((fd = open(gn->path, O_RDONLY)) == -1)
 return FALSE;

    if (read(fd, buf, sizeof(buf)) != sizeof(buf)) {
 (void)close(fd);
 return FALSE;
    }

    (void)close(fd);

    return memcmp(buf, armag, sizeof(buf)) == 0;
}
