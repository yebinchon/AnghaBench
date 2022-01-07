
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FALSE ;
 int F_GETFL ;
 int TRUE ;
 scalar_t__ fcntl (int,int ,int ) ;
 int fileno (int *) ;

__attribute__((used)) static bool
valid_file(FILE *fp)
{
    bool code = FALSE;
    int fd = fileno(fp);

    if (fd >= 0) {
 if (fcntl(fd, F_GETFL, 0) >= 0) {
     code = TRUE;
 }
    }
    return code;
}
