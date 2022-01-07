
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int fatal (int ,char const*) ;

__attribute__((used)) static void
unexpected_eof (const char *msg)
{
  fatal (_("%s: unexpected EOF"), msg);
}
