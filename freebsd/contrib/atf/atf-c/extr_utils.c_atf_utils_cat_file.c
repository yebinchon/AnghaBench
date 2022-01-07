
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int buffer ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_MSG (int,char*,char const*) ;
 int O_RDONLY ;
 int open (char const*,int ) ;
 int printf (char*,char const*) ;
 size_t read (int const,char*,int) ;
 char* strchr (char*,char) ;

void
atf_utils_cat_file(const char *name, const char *prefix)
{
    const int fd = open(name, O_RDONLY);
    ATF_REQUIRE_MSG(fd != -1, "Cannot open %s", name);

    char buffer[1024];
    ssize_t count;
    bool continued = 0;
    while ((count = read(fd, buffer, sizeof(buffer) - 1)) > 0) {
        buffer[count] = '\0';

        if (!continued)
            printf("%s", prefix);

        char *iter = buffer;
        char *end;
        while ((end = strchr(iter, '\n')) != ((void*)0)) {
            *end = '\0';
            printf("%s\n", iter);

            iter = end + 1;
            if (iter != buffer + count)
                printf("%s", prefix);
            else
                continued = 0;
        }
        if (iter < buffer + count) {
            printf("%s", iter);
            continued = 1;
        }
    }
    ATF_REQUIRE(count == 0);
}
