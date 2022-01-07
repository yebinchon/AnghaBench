
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fn_decl {int dummy; } ;


 scalar_t__ REQUIRED (struct fn_decl*) ;
 int SET_SEEN (struct fn_decl*) ;

 struct fn_decl* lookup_std_proto (char const*,int ) ;
 int required_other ;
 int required_unseen_count ;
 int seen_EXIT_FAILURE ;
 int seen_EXIT_SUCCESS ;
 int seen_S_IFBLK ;
 int seen_S_IFCHR ;
 int seen_S_IFDIR ;
 int seen_S_IFIFO ;
 int seen_S_IFLNK ;
 int seen_S_IFREG ;
 int seen_S_ISBLK ;
 int seen_S_ISCHR ;
 int seen_S_ISDIR ;
 int seen_S_ISFIFO ;
 int seen_S_ISLNK ;
 int seen_S_ISREG ;
 int seen_errno ;
 int special_file_handling ;

 int strcmp (char const*,char*) ;
 int strlen (char const*) ;


__attribute__((used)) static void
recognized_macro (const char *fname)
{

  struct fn_decl *fn = lookup_std_proto (fname, strlen (fname));


  if (fn)
    {
      if (REQUIRED (fn))
 required_unseen_count--;
      SET_SEEN (fn);
    }

  switch (special_file_handling)
    {
    case 130:
      if (strcmp (fname, "errno") == 0 && !seen_errno)
 seen_errno = 1, required_other--;
      break;
    case 129:
      if (strcmp (fname, "EXIT_FAILURE") == 0 && !seen_EXIT_FAILURE)
 seen_EXIT_FAILURE = 1, required_other--;
      if (strcmp (fname, "EXIT_SUCCESS") == 0 && !seen_EXIT_SUCCESS)
 seen_EXIT_SUCCESS = 1, required_other--;
      break;
    case 128:
      if (fname[0] == 'S' && fname[1] == '_')
 {
   if (strcmp (fname, "S_IFBLK") == 0) seen_S_IFBLK++;
   else if (strcmp (fname, "S_ISBLK") == 0) seen_S_ISBLK++;
   else if (strcmp (fname, "S_IFCHR") == 0) seen_S_IFCHR++;
   else if (strcmp (fname, "S_ISCHR") == 0) seen_S_ISCHR++;
   else if (strcmp (fname, "S_IFDIR") == 0) seen_S_IFDIR++;
   else if (strcmp (fname, "S_ISDIR") == 0) seen_S_ISDIR++;
   else if (strcmp (fname, "S_IFIFO") == 0) seen_S_IFIFO++;
   else if (strcmp (fname, "S_ISFIFO") == 0) seen_S_ISFIFO++;
   else if (strcmp (fname, "S_IFLNK") == 0) seen_S_IFLNK++;
   else if (strcmp (fname, "S_ISLNK") == 0) seen_S_ISLNK++;
   else if (strcmp (fname, "S_IFREG") == 0) seen_S_IFREG++;
   else if (strcmp (fname, "S_ISREG") == 0) seen_S_ISREG++;
 }
      break;

    default:
      break;
    }
}
