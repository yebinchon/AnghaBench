
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oflag {int set; int name; } ;


 struct oflag* bsearch (struct oflag*,int ,int ,int,int ) ;
 int c_oflag ;
 int ddflags ;
 int errx (int,char*,int ) ;
 int nitems (int ) ;
 int olist ;
 int strsep (char**,char*) ;

__attribute__((used)) static void
f_oflag(char *arg)
{
 struct oflag *op, tmp;

 while (arg != ((void*)0)) {
  tmp.name = strsep(&arg, ",");
  op = bsearch(&tmp, olist, nitems(olist), sizeof(struct oflag),
      c_oflag);
  if (op == ((void*)0))
   errx(1, "unknown open flag %s", tmp.name);
  ddflags |= op->set;
 }
}
