
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void
bad_stab (const char *p)
{
  fprintf (stderr, _("Bad stab: %s\n"), p);
}
