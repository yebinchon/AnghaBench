
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mods ;


 scalar_t__ EOF ;
 int dtrace_provider_modules (int ,char const**,int) ;
 int error (char*,int ) ;
 int fatal (char*,...) ;
 scalar_t__ fclose (int *) ;
 int * fopen (int ,char*) ;
 int g_dtp ;
 char const** g_etc ;
 char const* g_etcbegin ;
 char const* g_etcend ;
 int g_etcfile ;
 int g_ofile ;
 int * g_ofp ;
 int oprintf (char*,char const*) ;

__attribute__((used)) static void
etcsystem_add(void)
{
 const char *mods[20];
 int nmods, line;

 if ((g_ofp = fopen(g_ofile = g_etcfile, "a")) == ((void*)0))
  fatal("failed to open output file '%s'", g_ofile);

 oprintf("%s\n", g_etcbegin);

 for (line = 0; g_etc[line] != ((void*)0); line++)
  oprintf("%s\n", g_etc[line]);

 nmods = dtrace_provider_modules(g_dtp, mods,
     sizeof (mods) / sizeof (char *) - 1);

 if (nmods >= sizeof (mods) / sizeof (char *))
  fatal("unexpectedly large number of modules!");

 mods[nmods++] = "dtrace";

 for (line = 0; line < nmods; line++)
  oprintf("forceload: drv/%s\n", mods[line]);

 oprintf("%s\n", g_etcend);

 if (fclose(g_ofp) == EOF)
  fatal("failed to close output file '%s'", g_ofile);

 error("added forceload directives to %s\n", g_ofile);
}
