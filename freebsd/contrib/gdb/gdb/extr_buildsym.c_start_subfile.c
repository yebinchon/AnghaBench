
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subfile {scalar_t__ language; struct subfile* next; int * name; int * debugformat; int * line_vector; int * dirname; } ;
typedef enum language { ____Placeholder_language } language ;


 scalar_t__ FILENAME_CMP (int *,char*) ;
 struct subfile* current_subfile ;
 void* deduce_language_from_filename (int *) ;
 scalar_t__ language_c ;
 int language_cplus ;
 int language_fortran ;
 scalar_t__ language_unknown ;
 int memset (char*,int ,int) ;
 int * savestring (char*,int ) ;
 int strlen (char*) ;
 struct subfile* subfiles ;
 scalar_t__ xmalloc (int) ;

void
start_subfile (char *name, char *dirname)
{
  struct subfile *subfile;




  for (subfile = subfiles; subfile; subfile = subfile->next)
    {
      if (FILENAME_CMP (subfile->name, name) == 0)
 {
   current_subfile = subfile;
   return;
 }
    }





  subfile = (struct subfile *) xmalloc (sizeof (struct subfile));
  memset ((char *) subfile, 0, sizeof (struct subfile));
  subfile->next = subfiles;
  subfiles = subfile;
  current_subfile = subfile;


  subfile->name = (name == ((void*)0)) ? ((void*)0) : savestring (name, strlen (name));
  subfile->dirname =
    (dirname == ((void*)0)) ? ((void*)0) : savestring (dirname, strlen (dirname));


  subfile->line_vector = ((void*)0);
  subfile->language = deduce_language_from_filename (subfile->name);
  if (subfile->language == language_unknown &&
      subfile->next != ((void*)0))
    {
      subfile->language = subfile->next->language;
    }



  subfile->debugformat = ((void*)0);






  if (subfile->name)
    {
      struct subfile *s;
      enum language sublang = deduce_language_from_filename (subfile->name);

      if (sublang == language_cplus || sublang == language_fortran)
 for (s = subfiles; s != ((void*)0); s = s->next)
   if (s->language == language_c)
     s->language = sublang;
    }


  if (subfile->language == language_c
      && subfile->next != ((void*)0)
      && (subfile->next->language == language_cplus
   || subfile->next->language == language_fortran))
    {
      subfile->language = subfile->next->language;
    }
}
