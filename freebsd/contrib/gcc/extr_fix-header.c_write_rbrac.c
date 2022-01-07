
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol_list {char* names; int flags; } ;
struct fn_decl {char* fname; char* rtype; char* params; } ;


 int ANSI_SYMBOL ;
 int MACRO_SYMBOL ;
 int POSIX1_SYMBOL ;
 int POSIX2_SYMBOL ;
 int REQUIRED (struct fn_decl*) ;
 int XOPEN_EXTENDED_SYMBOL ;
 int XOPEN_SYMBOL ;

 int fatal (char*,char*) ;
 int fprintf (int ,char*,...) ;
 struct fn_decl* lookup_std_proto (char const*,int) ;
 int outf ;
 scalar_t__ required_unseen_count ;
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

 int strcmp (char*,char*) ;
 int strlen (char const*) ;
 struct symbol_list* symbol_table ;


__attribute__((used)) static void
write_rbrac (void)
{
  struct fn_decl *fn;
  const char *cptr;
  struct symbol_list *cur_symbols;

  if (required_unseen_count)
    {



    }


  for (cur_symbols = &symbol_table[0]; cur_symbols->names; cur_symbols++)
    {
      int if_was_emitted = 0;
      int name_len;
      cptr = cur_symbols->names;
      for ( ; (name_len = strlen (cptr)) != 0; cptr+= name_len + 1)
 {
   int macro_protect = 0;

   if (cur_symbols->flags & MACRO_SYMBOL)
     continue;

   fn = lookup_std_proto (cptr, name_len);
   if (fn == ((void*)0) || !REQUIRED (fn))
     continue;

   if (!if_was_emitted)
     {

       if (cur_symbols->flags & ANSI_SYMBOL)
  fprintf (outf,
  "#if defined(__USE_FIXED_PROTOTYPES__) || defined(__cplusplus) || defined (__STRICT_ANSI__)\n");
       else if (cur_symbols->flags & (POSIX1_SYMBOL|POSIX2_SYMBOL))
  fprintf (outf,
       "#if defined(__USE_FIXED_PROTOTYPES__) || (defined(__cplusplus) \\\n    ? (!defined(__STRICT_ANSI__) || defined(_POSIX_SOURCE)) \\\n    : (defined(__STRICT_ANSI__) && defined(_POSIX_SOURCE)))\n");


       else if (cur_symbols->flags & XOPEN_SYMBOL)
  {
  fprintf (outf,
       "#if defined(__USE_FIXED_PROTOTYPES__) \\\n   || (defined(__STRICT_ANSI__) && defined(_XOPEN_SOURCE))\n");

  }
       else if (cur_symbols->flags & XOPEN_EXTENDED_SYMBOL)
  {
  fprintf (outf,
       "#if defined(__USE_FIXED_PROTOTYPES__) \\\n   || (defined(__STRICT_ANSI__) && defined(_XOPEN_EXTENDED_SOURCE))\n");

  }
       else
  {
    fatal ("internal error for function %s", fn->fname);
  }
       if_was_emitted = 1;
     }



   if (!strcmp (fn->fname, "memmove")
       || !strcmp (fn->fname, "putc")
       || !strcmp (fn->fname, "getc")
       || !strcmp (fn->fname, "vprintf")
       || !strcmp (fn->fname, "vfprintf")
       || !strcmp (fn->fname, "vsprintf")
       || !strcmp (fn->fname, "rewinddir")
       || !strcmp (fn->fname, "abort"))
     macro_protect = 1;

   if (macro_protect)
     fprintf (outf, "#ifndef %s\n", fn->fname);
   fprintf (outf, "extern %s %s (%s);\n",
     fn->rtype, fn->fname, fn->params);
   if (macro_protect)
     fprintf (outf, "#endif\n");
 }
      if (if_was_emitted)
 fprintf (outf,
   "#endif /* defined(__USE_FIXED_PROTOTYPES__) || ... */\n");
    }
  if (required_unseen_count)
    {



    }

  switch (special_file_handling)
    {
    case 130:
      if (!seen_errno)
 fprintf (outf, "extern int errno;\n");
      break;
    case 129:
      if (!seen_EXIT_FAILURE)
 fprintf (outf, "#define EXIT_FAILURE 1\n");
      if (!seen_EXIT_SUCCESS)
 fprintf (outf, "#define EXIT_SUCCESS 0\n");
      break;
    case 128:
      if (!seen_S_ISBLK && seen_S_IFBLK)
 fprintf (outf,
   "#define S_ISBLK(mode) (((mode) & S_IFMT) == S_IFBLK)\n");
      if (!seen_S_ISCHR && seen_S_IFCHR)
 fprintf (outf,
   "#define S_ISCHR(mode) (((mode) & S_IFMT) == S_IFCHR)\n");
      if (!seen_S_ISDIR && seen_S_IFDIR)
 fprintf (outf,
   "#define S_ISDIR(mode) (((mode) & S_IFMT) == S_IFDIR)\n");
      if (!seen_S_ISFIFO && seen_S_IFIFO)
 fprintf (outf,
   "#define S_ISFIFO(mode) (((mode) & S_IFMT) == S_IFIFO)\n");
      if (!seen_S_ISLNK && seen_S_IFLNK)
 fprintf (outf,
   "#define S_ISLNK(mode) (((mode) & S_IFMT) == S_IFLNK)\n");
      if (!seen_S_ISREG && seen_S_IFREG)
 fprintf (outf,
   "#define S_ISREG(mode) (((mode) & S_IFMT) == S_IFREG)\n");
      break;

    default:
      break;
    }

}
