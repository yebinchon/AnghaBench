
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iflag {int noset; int set; int name; } ;


 struct iflag* bsearch (struct iflag*,int ,int ,int,int ) ;
 int c_iflag ;
 int ddflags ;
 int errx (int,char*,int ) ;
 int ilist ;
 int nitems (int ) ;
 int strsep (char**,char*) ;

__attribute__((used)) static void
f_iflag(char *arg)
{
 struct iflag *ip, tmp;

 while (arg != ((void*)0)) {
  tmp.name = strsep(&arg, ",");
  ip = bsearch(&tmp, ilist, nitems(ilist), sizeof(struct iflag),
      c_iflag);
  if (ip == ((void*)0))
   errx(1, "unknown iflag %s", tmp.name);
  if (ddflags & ip->noset)
   errx(1, "%s: illegal conversion combination", tmp.name);
  ddflags |= ip->set;
 }
}
