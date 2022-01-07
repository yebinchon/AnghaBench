
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PATH_MAX ;
 scalar_t__ addr_last ;
 char* getenv (char*) ;
 scalar_t__ malloc (size_t) ;
 int quit (int) ;
 int sigactive ;
 int sigflags ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 scalar_t__ write_file (char*,char*,int,scalar_t__) ;

void
handle_hup(int signo)
{
 char *hup = ((void*)0);
 char *s;
 char ed_hup[] = "ed.hup";
 size_t n;

 if (!sigactive)
  quit(1);
 sigflags &= ~(1 << (signo - 1));
 if (addr_last && write_file(ed_hup, "w", 1, addr_last) < 0 &&
     (s = getenv("HOME")) != ((void*)0) &&
     (n = strlen(s)) + 8 <= PATH_MAX &&
     (hup = (char *) malloc(n + 10)) != ((void*)0)) {
  strcpy(hup, s);
  if (hup[n - 1] != '/')
   hup[n] = '/', hup[n+1] = '\0';
  strcat(hup, "ed.hup");
  write_file(hup, "w", 1, addr_last);
 }
 quit(2);
}
