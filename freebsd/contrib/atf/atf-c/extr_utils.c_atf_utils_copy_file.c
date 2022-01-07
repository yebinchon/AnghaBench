
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int ssize_t ;
typedef int buffer ;


 int ATF_REQUIRE_MSG (int,char*,char const*) ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int const) ;
 int fchmod (int const,int ) ;
 int fstat (int const,struct stat*) ;
 int open (char const*,int,...) ;
 int read (int const,char*,int) ;
 int write (int const,char*,int) ;

void
atf_utils_copy_file(const char *source, const char *destination)
{
    const int input = open(source, O_RDONLY);
    ATF_REQUIRE_MSG(input != -1, "Failed to open source file during "
                    "copy (%s)", source);

    const int output = open(destination, O_WRONLY | O_CREAT | O_TRUNC, 0777);
    ATF_REQUIRE_MSG(output != -1, "Failed to open destination file during "
                    "copy (%s)", destination);

    char buffer[1024];
    ssize_t length;
    while ((length = read(input, buffer, sizeof(buffer))) > 0)
        ATF_REQUIRE_MSG(write(output, buffer, length) == length,
                        "Failed to write to %s during copy", destination);
    ATF_REQUIRE_MSG(length != -1, "Failed to read from %s during copy", source);

    struct stat sb;
    ATF_REQUIRE_MSG(fstat(input, &sb) != -1,
                    "Failed to stat source file %s during copy", source);
    ATF_REQUIRE_MSG(fchmod(output, sb.st_mode) != -1,
                    "Failed to chmod destination file %s during copy",
                    destination);

    close(output);
    close(input);
}
