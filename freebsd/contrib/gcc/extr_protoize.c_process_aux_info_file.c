
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct stat {scalar_t__ st_mtime; size_t st_size; } ;


 int DIR_SEPARATOR ;
 int DIR_SEPARATOR_2 ;
 int ENOENT ;
 int IS_ABSOLUTE_PATH (char*) ;
 scalar_t__ IS_DIR_SEPARATOR (char) ;
 int O_BINARY ;
 int O_RDONLY ;
 int R_OK ;
 int access (char*,int ) ;
 char* alloca (size_t) ;
 char const* aux_info_file_name ;
 char const* aux_info_suffix ;
 char const* base_source_file_name ;
 scalar_t__ close (int) ;
 int current_aux_info_lineno ;
 int errno ;
 int errors ;
 int free (char*) ;
 int gen_aux_info_file (char const*) ;
 char* invocation_filename ;
 int notice (char*,int ,char*,...) ;
 int open (char*,int,int) ;
 int pname ;
 scalar_t__ referenced_file_is_newer (char const*,scalar_t__) ;
 int safe_read (int,char*,size_t) ;
 int save_def_or_dec (char const*,int) ;
 int shortpath (int *,char const*) ;
 int stat (char const*,struct stat*) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;
 char* strrchr (char*,int ) ;
 char* unexpand_if_needed (char const*) ;
 int unlink (char*) ;
 char* xmalloc (size_t) ;
 int xstrerror (int) ;

__attribute__((used)) static void
process_aux_info_file (const char *base_source_filename, int keep_it,
         int is_syscalls)
{
  size_t base_len = strlen (base_source_filename);
  char * aux_info_filename = alloca (base_len + strlen (aux_info_suffix) + 1);
  char *aux_info_base;
  char *aux_info_limit;
  char *aux_info_relocated_name;
  const char *aux_info_second_line;
  time_t aux_info_mtime;
  size_t aux_info_size;
  int must_create;



  strcpy (aux_info_filename, base_source_filename);
  strcat (aux_info_filename, aux_info_suffix);







  must_create = 0;


start_over: ;

  if (access (aux_info_filename, R_OK) == -1)
    {
      if (errno == ENOENT)
 {
   if (is_syscalls)
     {
       notice ("%s: warning: missing SYSCALLS file '%s'\n",
        pname, aux_info_filename);
       return;
     }
   must_create = 1;
 }
      else
 {
   int errno_val = errno;
   notice ("%s: can't read aux info file '%s': %s\n",
    pname, shortpath (((void*)0), aux_info_filename),
    xstrerror (errno_val));
   errors++;
   return;
 }
    }
  if (must_create)
    {
      if (!gen_aux_info_file (base_source_filename))
 {
   errors++;
   return;
 }
      if (access (aux_info_filename, R_OK) == -1)
 {
   int errno_val = errno;
   notice ("%s: can't read aux info file '%s': %s\n",
    pname, shortpath (((void*)0), aux_info_filename),
    xstrerror (errno_val));
   errors++;
   return;
 }
    }

  {
    struct stat stat_buf;



    if (stat (aux_info_filename, &stat_buf) == -1)
      {
 int errno_val = errno;
 notice ("%s: can't get status of aux info file '%s': %s\n",
  pname, shortpath (((void*)0), aux_info_filename),
  xstrerror (errno_val));
 errors++;
 return;
      }




    if ((aux_info_size = stat_buf.st_size) == 0)
      return;





    aux_info_mtime = stat_buf.st_mtime;

    if (!is_syscalls)
      {




 if (stat (base_source_filename, &stat_buf) == -1)
   {
     int errno_val = errno;
     notice ("%s: can't get status of aux info file '%s': %s\n",
      pname, shortpath (((void*)0), base_source_filename),
      xstrerror (errno_val));
     errors++;
     return;
   }
 if (stat_buf.st_mtime > aux_info_mtime)
   {
     must_create = 1;
     goto start_over;
   }
      }
  }

  {
    int aux_info_file;
    int fd_flags;



    fd_flags = O_RDONLY;




    if ((aux_info_file = open (aux_info_filename, fd_flags, 0444 )) == -1)
      {
 int errno_val = errno;
 notice ("%s: can't open aux info file '%s' for reading: %s\n",
  pname, shortpath (((void*)0), aux_info_filename),
  xstrerror (errno_val));
 return;
      }



    aux_info_base = xmalloc (aux_info_size + 1);
    aux_info_limit = aux_info_base + aux_info_size;
    *aux_info_limit = '\0';



    if (safe_read (aux_info_file, aux_info_base, aux_info_size) !=
 (int) aux_info_size)
      {
 int errno_val = errno;
 notice ("%s: error reading aux info file '%s': %s\n",
  pname, shortpath (((void*)0), aux_info_filename),
  xstrerror (errno_val));
 free (aux_info_base);
 close (aux_info_file);
 return;
      }



    if (close (aux_info_file))
      {
 int errno_val = errno;
 notice ("%s: error closing aux info file '%s': %s\n",
  pname, shortpath (((void*)0), aux_info_filename),
  xstrerror (errno_val));
 free (aux_info_base);
 close (aux_info_file);
 return;
      }
  }




  if (must_create && !keep_it)
    if (unlink (aux_info_filename) == -1)
      {
 int errno_val = errno;
 notice ("%s: can't delete aux info file '%s': %s\n",
  pname, shortpath (((void*)0), aux_info_filename),
  xstrerror (errno_val));
      }
  {
    char *p = aux_info_base;

    while (*p != ':'



    )
      p++;
    p++;
    while (*p == ' ')
      p++;
    invocation_filename = p;
    while (*p != ' ')
      p++;
    *p++ = DIR_SEPARATOR;
    *p++ = '\0';
    while (*p++ != '\n')
      continue;
    aux_info_second_line = p;
    aux_info_relocated_name = 0;
    if (! IS_ABSOLUTE_PATH (invocation_filename))
      {


 char *dir_end;
 aux_info_relocated_name = xmalloc (base_len + (p-invocation_filename));
 strcpy (aux_info_relocated_name, base_source_filename);
 dir_end = strrchr (aux_info_relocated_name, DIR_SEPARATOR);
 if (dir_end)
   dir_end++;
 else
   dir_end = aux_info_relocated_name;
 strcpy (dir_end, invocation_filename);
 invocation_filename = aux_info_relocated_name;
      }
  }


  {
    const char *aux_info_p;






    if (!is_syscalls)
      {
 current_aux_info_lineno = 2;

 for (aux_info_p = aux_info_second_line; *aux_info_p; )
   {
     if (referenced_file_is_newer (aux_info_p, aux_info_mtime))
       {
  free (aux_info_base);
  free (aux_info_relocated_name);
  if (keep_it && unlink (aux_info_filename) == -1)
    {
      int errno_val = errno;
             notice ("%s: can't delete file '%s': %s\n",
       pname, shortpath (((void*)0), aux_info_filename),
       xstrerror (errno_val));
             return;
           }
  must_create = 1;
         goto start_over;
       }



     while (*aux_info_p != '\n')
       aux_info_p++;
     aux_info_p++;
     current_aux_info_lineno++;
   }
      }




    current_aux_info_lineno = 2;

    for (aux_info_p = aux_info_second_line; *aux_info_p;)
      {
 char *unexpanded_line = unexpand_if_needed (aux_info_p);

 if (unexpanded_line)
   {
     save_def_or_dec (unexpanded_line, is_syscalls);
     free (unexpanded_line);
   }
 else
   save_def_or_dec (aux_info_p, is_syscalls);



 while (*aux_info_p != '\n')
   aux_info_p++;
 aux_info_p++;
 current_aux_info_lineno++;
      }
  }

  free (aux_info_base);
  free (aux_info_relocated_name);
}
