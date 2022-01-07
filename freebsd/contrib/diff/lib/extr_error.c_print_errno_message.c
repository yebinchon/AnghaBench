
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 scalar_t__ _IO_fwide (int ,int ) ;
 int __fwprintf (int ,char*,char const*) ;
 char* __strerror_r (int,char*,int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static void
print_errno_message (int errnum)
{
  char const *s;
  s = strerror (errnum);



  if (! s)
    s = _("Unknown system error");
  fprintf (stderr, ": %s", s);
}
