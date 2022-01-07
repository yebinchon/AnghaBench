
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {scalar_t__ st_dev; int st_ino; int st_mode; } ;
struct cpp_dir {scalar_t__ dev; scalar_t__ construct; struct cpp_dir* next; int ino; int name; scalar_t__ user_supplied_p; } ;
typedef int cpp_reader ;
struct TYPE_3__ {scalar_t__ warn_missing_include_dirs; } ;
typedef TYPE_1__ cpp_options ;


 int CPP_DL_ERROR ;
 int CPP_DL_WARNING ;
 scalar_t__ ENOENT ;
 int INO_T_COPY (int ,int ) ;
 scalar_t__ INO_T_EQ (int ,int ) ;
 int REASON_DUP ;
 int REASON_DUP_SYS ;
 int REASON_NOENT ;
 int REASON_QUIET ;
 int S_ISDIR (int ) ;
 int cpp_errno (int *,int ,int ) ;
 int cpp_error_with_line (int *,int ,int ,int ,char*,int ) ;
 TYPE_1__* cpp_get_options (int *) ;
 scalar_t__ errno ;
 int free_path (struct cpp_dir*,int) ;
 scalar_t__ stat (int ,struct stat*) ;

__attribute__((used)) static struct cpp_dir *
remove_duplicates (cpp_reader *pfile, struct cpp_dir *head,
     struct cpp_dir *system, struct cpp_dir *join,
     int verbose)
{
  struct cpp_dir **pcur, *tmp, *cur;
  struct stat st;

  for (pcur = &head; *pcur; )
    {
      int reason = REASON_QUIET;

      cur = *pcur;

      if (stat (cur->name, &st))
 {

   if (errno != ENOENT)
     cpp_errno (pfile, CPP_DL_ERROR, cur->name);
   else
     {

       cpp_options *opts = cpp_get_options (pfile);
       if (opts->warn_missing_include_dirs && cur->user_supplied_p)
  cpp_errno (pfile, CPP_DL_WARNING, cur->name);
       reason = REASON_NOENT;
     }
 }
      else if (!S_ISDIR (st.st_mode))
 cpp_error_with_line (pfile, CPP_DL_ERROR, 0, 0,
        "%s: not a directory", cur->name);
      else
 {
   INO_T_COPY (cur->ino, st.st_ino);
   cur->dev = st.st_dev;


   reason = REASON_DUP_SYS;
   for (tmp = system; tmp; tmp = tmp->next)
    if (INO_T_EQ (tmp->ino, cur->ino) && tmp->dev == cur->dev
        && cur->construct == tmp->construct)
       break;

   if (!tmp)
     {

       reason = REASON_DUP;
       for (tmp = head; tmp != cur; tmp = tmp->next)
        if (INO_T_EQ (cur->ino, tmp->ino) && cur->dev == tmp->dev
     && cur->construct == tmp->construct)
    break;

       if (tmp == cur

    && !(cur->next == ((void*)0) && join
         && INO_T_EQ (cur->ino, join->ino)
        && cur->dev == join->dev
        && cur->construct == join->construct))
  {

    pcur = &cur->next;
    continue;
  }
     }
 }


      *pcur = cur->next;
      free_path (cur, verbose ? reason: REASON_QUIET);
    }

  *pcur = join;
  return head;
}
