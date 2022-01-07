
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EL_ADDFN ;
 int EL_BIND ;
 int EL_EDITOR ;
 int EL_HIST ;
 int EL_PROMPT ;
 scalar_t__ Eflag ;
 int INTOFF ;
 int INTON ;
 scalar_t__ Vflag ;
 int * _el_fn_complete ;
 int arg0 ;
 scalar_t__ editing ;
 int * el ;
 int el_end (int *) ;
 int * el_in ;
 int * el_init (int ,int *,int *,int *) ;
 int * el_out ;
 int el_set (int *,int ,char*,...) ;
 int el_source (int *,int *) ;
 void* fdopen (int,char*) ;
 int getprompt ;
 int * hist ;
 int history ;
 int history_end (int *) ;
 int * history_init () ;
 int histsizeval () ;
 scalar_t__ iflag ;
 scalar_t__ isatty (int ) ;
 char* lookupvar (char*) ;
 int out2fmt_flush (char*) ;
 int setenv (char*,char*,int) ;
 int sethistsize (int ) ;
 int unsetenv (char*) ;

void
histedit(void)
{



 if (iflag) {
  if (!hist) {



   INTOFF;
   hist = history_init();
   INTON;

   if (hist != ((void*)0))
    sethistsize(histsizeval());
   else
    out2fmt_flush("sh: can't initialize history\n");
  }
  if ((Eflag || Vflag) && !el && isatty(0)) {



   char *term;

   INTOFF;
   if (el_in == ((void*)0))
    el_in = fdopen(0, "r");
   if (el_out == ((void*)0))
    el_out = fdopen(2, "w");
   if (el_in == ((void*)0) || el_out == ((void*)0))
    goto bad;
   term = lookupvar("TERM");
   if (term)
    setenv("TERM", term, 1);
   else
    unsetenv("TERM");
   el = el_init(arg0, el_in, el_out, el_out);
   if (el != ((void*)0)) {
    if (hist)
     el_set(el, EL_HIST, history, hist);
    el_set(el, EL_PROMPT, getprompt);
    el_set(el, EL_ADDFN, "sh-complete",
        "Filename completion",
        _el_fn_complete);
   } else {
bad:
    out2fmt_flush("sh: can't initialize editing\n");
   }
   INTON;
  } else if (!(Eflag || Vflag) && el) {
   INTOFF;
   el_end(el);
   el = ((void*)0);
   INTON;
  }
  if (el) {
   if (Vflag)
    el_set(el, EL_EDITOR, "vi");
   else if (Eflag)
    el_set(el, EL_EDITOR, "emacs");
   el_set(el, EL_BIND, "^I", "sh-complete", ((void*)0));
   el_source(el, ((void*)0));
  }
 } else {
  INTOFF;
  if (el) {
   el_end(el);
   el = ((void*)0);
  }
  if (hist) {
   history_end(hist);
   hist = ((void*)0);
  }
  INTON;
 }
}
