
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchstr {char* part1; scalar_t__ ordering; scalar_t__ validated; int live_cond; scalar_t__ args; } ;


 int SWITCH_OK ;
 char** argbuf ;
 int argbuf_index ;
 int do_spec_1 (char*,int ,int *) ;
 int do_spec_2 (char const*) ;
 int fatal (char*,char*) ;
 int n_switches ;
 struct switchstr* switches ;
 struct switchstr* xrealloc (struct switchstr*,int) ;

__attribute__((used)) static void
do_self_spec (const char *spec)
{
  do_spec_2 (spec);
  do_spec_1 (" ", 0, ((void*)0));

  if (argbuf_index > 0)
    {
      int i, first;

      first = n_switches;
      n_switches += argbuf_index;
      switches = xrealloc (switches,
      sizeof (struct switchstr) * (n_switches + 1));

      switches[n_switches] = switches[first];
      for (i = 0; i < argbuf_index; i++)
 {
   struct switchstr *sw;


   if (argbuf[i][0] != '-')
     fatal ("switch '%s' does not start with '-'", argbuf[i]);

   sw = &switches[i + first];
   sw->part1 = &argbuf[i][1];
   sw->args = 0;
   sw->live_cond = SWITCH_OK;
   sw->validated = 0;
   sw->ordering = 0;
 }
    }
}
