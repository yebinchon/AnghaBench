
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int fts_info; char* fts_name; int fts_path; int fts_level; int fts_errno; } ;
typedef TYPE_1__ FTSENT ;
typedef int FTS ;






 int FTS_NAMEONLY ;
 int FTS_NOSTAT ;
 int FTS_ROOTLEVEL ;
 int FTS_SKIP ;
 int display (TYPE_1__*,TYPE_1__*,int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int f_label ;
 scalar_t__ f_listdir ;
 int f_listdot ;
 scalar_t__ f_nosort ;
 int f_recursive ;
 TYPE_1__* fts_children (int *,int) ;
 int * fts_open (char**,int,int *) ;
 TYPE_1__* fts_read (int *) ;
 int fts_set (int *,TYPE_1__*,int ) ;
 int * mastercmp ;
 int output ;
 int printname (int ) ;
 int putchar (char) ;
 int puts (char*) ;
 int rval ;
 int strerror (int ) ;
 int warnx (char*,char*,...) ;

__attribute__((used)) static void
traverse(int argc, char *argv[], int options)
{
 FTS *ftsp;
 FTSENT *p, *chp;
 int ch_options;

 if ((ftsp =
     fts_open(argv, options, f_nosort ? ((void*)0) : mastercmp)) == ((void*)0))
  err(1, "fts_open");





 chp = fts_children(ftsp, 0);
 if (chp != ((void*)0))
  display(((void*)0), chp, options);
 if (f_listdir)
  return;





 ch_options = !f_recursive && !f_label &&
     options & FTS_NOSTAT ? FTS_NAMEONLY : 0;

 while ((p = fts_read(ftsp)) != ((void*)0))
  switch (p->fts_info) {
  case 130:
   warnx("%s: directory causes a cycle", p->fts_name);
   break;
  case 129:
  case 128:
   warnx("%s: %s", p->fts_path, strerror(p->fts_errno));
   rval = 1;
   break;
  case 131:
   if (p->fts_level != FTS_ROOTLEVEL &&
       p->fts_name[0] == '.' && !f_listdot)
    break;






   if (output) {
    putchar('\n');
    (void)printname(p->fts_path);
    puts(":");
   } else if (argc > 1) {
    (void)printname(p->fts_path);
    puts(":");
    output = 1;
   }
   chp = fts_children(ftsp, ch_options);
   display(p, chp, options);

   if (!f_recursive && chp != ((void*)0))
    (void)fts_set(ftsp, p, FTS_SKIP);
   break;
  default:
   break;
  }
 if (errno)
  err(1, "fts_read");
}
