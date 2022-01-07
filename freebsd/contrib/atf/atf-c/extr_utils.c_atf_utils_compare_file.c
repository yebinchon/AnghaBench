
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int buffer ;


 int ATF_REQUIRE_MSG (int,char*,char const*) ;
 int O_RDONLY ;
 int close (int const) ;
 scalar_t__ memcmp (char const*,char*,scalar_t__) ;
 int open (char const*,int ) ;
 scalar_t__ read (int const,char*,int) ;
 scalar_t__ strlen (char const*) ;

bool
atf_utils_compare_file(const char *name, const char *contents)
{
    const int fd = open(name, O_RDONLY);
    ATF_REQUIRE_MSG(fd != -1, "Cannot open %s", name);

    const char *pos = contents;
    ssize_t remaining = strlen(contents);

    char buffer[1024];
    ssize_t count;
    while ((count = read(fd, buffer, sizeof(buffer))) > 0 &&
           count <= remaining) {
        if (memcmp(pos, buffer, count) != 0) {
            close(fd);
            return 0;
        }
        remaining -= count;
        pos += count;
    }
    close(fd);
    return count == 0 && remaining == 0;
}
