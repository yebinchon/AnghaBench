
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef scalar_t__ apr_status_t ;


 scalar_t__ APR_ENOENT ;
 scalar_t__ APR_SUCCESS ;
 int PWBUF_SIZE ;
 scalar_t__ errno ;
 struct passwd* getpwnam (char const*) ;
 scalar_t__ getpwnam_r (char const*,struct passwd*,char*,int ,struct passwd**) ;
 int memcpy (struct passwd*,struct passwd*,int) ;

__attribute__((used)) static apr_status_t getpwnam_safe(const char *username,
                                  struct passwd *pw,
                                  char pwbuf[PWBUF_SIZE])
{
    struct passwd *pwptr;
    errno = 0;
    if ((pwptr = getpwnam(username)) != ((void*)0)) {
        memcpy(pw, pwptr, sizeof *pw);
    }
    else {
        return errno ? errno : APR_ENOENT;
    }

    return APR_SUCCESS;
}
