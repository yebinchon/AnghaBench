
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conv {int noset; int set; scalar_t__ ctab; int name; } ;


 struct conv* bsearch (struct conv*,int ,int ,int,int ) ;
 int c_conv ;
 int clist ;
 scalar_t__ ctab ;
 int ddflags ;
 int errx (int,char*,int ) ;
 int nitems (int ) ;
 int strsep (char**,char*) ;

__attribute__((used)) static void
f_conv(char *arg)
{
 struct conv *cp, tmp;

 while (arg != ((void*)0)) {
  tmp.name = strsep(&arg, ",");
  cp = bsearch(&tmp, clist, nitems(clist), sizeof(struct conv),
      c_conv);
  if (cp == ((void*)0))
   errx(1, "unknown conversion %s", tmp.name);
  if (ddflags & cp->noset)
   errx(1, "%s: illegal conversion combination", tmp.name);
  ddflags |= cp->set;
  if (cp->ctab)
   ctab = cp->ctab;
 }
}
