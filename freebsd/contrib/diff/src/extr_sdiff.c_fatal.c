
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char const*) ;
 int error (int ,int ,char*,char*) ;
 int exiterr () ;

__attribute__((used)) static void
fatal (char const *msgid)
{
  error (0, 0, "%s", _(msgid));
  exiterr ();
}
