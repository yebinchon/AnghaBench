
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_MSG (int,char*,char const*) ;
 int O_RDONLY ;
 int close (int const) ;
 int open (char const*,int ) ;
 int read (int const,void* const,size_t const) ;

__attribute__((used)) static ssize_t
read_file(const char *path, void *const buffer, const size_t buflen)
{
    const int fd = open(path, O_RDONLY);
    ATF_REQUIRE_MSG(fd != -1, "Cannot open %s", path);
    const ssize_t length = read(fd, buffer, buflen - 1);
    close(fd);
    ATF_REQUIRE(length != -1);
    ((char *)buffer)[length] = '\0';
    return length;
}
