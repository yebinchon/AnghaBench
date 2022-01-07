
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*,char const*) ;

__attribute__((used)) static void
iso8601_usage(const char *badarg)
{
 errx(1, "invalid argument '%s' for -I", badarg);
}
