
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u_long ;
struct termios {long c_cflag; long c_iflag; long c_ispeed; long c_lflag; long c_oflag; long c_ospeed; long* c_cc; } ;
struct cchar {char* name; size_t sub; } ;


 scalar_t__ CHK (char*) ;
 size_t VMIN ;
 size_t VTIME ;
 struct cchar* cchars1 ;
 int gerr (char*) ;
 int sscanf (char*,char*,long*) ;
 char* strchr (char*,char) ;
 char* strsep (char**,char*) ;

void
gread(struct termios *tp, char *s)
{
 struct cchar *cp;
 char *ep, *p;
 long tmp;

 if ((s = strchr(s, ':')) == ((void*)0))
  gerr(((void*)0));
 for (++s; s != ((void*)0);) {
  p = strsep(&s, ":\0");
  if (!p || !*p)
   break;
  if (!(ep = strchr(p, '=')))
   gerr(p);
  *ep++ = '\0';
  (void)sscanf(ep, "%lx", (u_long *)&tmp);


  if ((*p == "cflag"[0] && !strcmp(p, "cflag"))) {
   tp->c_cflag = tmp;
   continue;
  }
  if ((*p == "iflag"[0] && !strcmp(p, "iflag"))) {
   tp->c_iflag = tmp;
   continue;
  }
  if ((*p == "ispeed"[0] && !strcmp(p, "ispeed"))) {
   (void)sscanf(ep, "%ld", &tmp);
   tp->c_ispeed = tmp;
   continue;
  }
  if ((*p == "lflag"[0] && !strcmp(p, "lflag"))) {
   tp->c_lflag = tmp;
   continue;
  }
  if ((*p == "oflag"[0] && !strcmp(p, "oflag"))) {
   tp->c_oflag = tmp;
   continue;
  }
  if ((*p == "ospeed"[0] && !strcmp(p, "ospeed"))) {
   (void)sscanf(ep, "%ld", &tmp);
   tp->c_ospeed = tmp;
   continue;
  }
  for (cp = cchars1; cp->name != ((void*)0); ++cp)
   if ((*p == cp->name[0] && !strcmp(p, cp->name))) {
    if (cp->sub == VMIN || cp->sub == VTIME)
     (void)sscanf(ep, "%ld", &tmp);
    tp->c_cc[cp->sub] = tmp;
    break;
   }
  if (cp->name == ((void*)0))
   gerr(p);
 }
}
