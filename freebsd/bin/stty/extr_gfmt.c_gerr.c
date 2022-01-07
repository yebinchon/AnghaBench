
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*,...) ;

__attribute__((used)) static void
gerr(const char *s)
{
 if (s)
  errx(1, "illegal gfmt1 option -- %s", s);
 else
  errx(1, "illegal gfmt1 option");
}
