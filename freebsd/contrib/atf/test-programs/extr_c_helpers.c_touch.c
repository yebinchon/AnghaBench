
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int atf_tc_fail (char*,char const*) ;
 int close (int) ;
 int open (char const*,int,int) ;

__attribute__((used)) static
void
touch(const char *path)
{
    int fd;
    fd = open(path, O_WRONLY | O_TRUNC | O_CREAT, 0644);
    if (fd == -1)
        atf_tc_fail("Could not create file %s", path);
    close(fd);
}
