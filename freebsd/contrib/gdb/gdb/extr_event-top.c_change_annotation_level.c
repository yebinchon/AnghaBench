
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PREFIX (int ) ;
 int PROMPT (int ) ;
 int SUFFIX (int ) ;
 scalar_t__ alloca (scalar_t__) ;
 int annotation_level ;
 char* async_annotation_suffix ;
 int pop_prompt () ;
 int push_prompt (char*,char*,char*) ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int warning (char*) ;

__attribute__((used)) static void
change_annotation_level (void)
{
  char *prefix, *suffix;

  if (!PREFIX (0) || !PROMPT (0) || !SUFFIX (0))
    {


      warning ("Command has same effect as set annotate");
      return;
    }

  if (annotation_level > 1)
    {
      if (!strcmp (PREFIX (0), "") && !strcmp (SUFFIX (0), ""))
 {

   prefix = (char *) alloca (strlen (async_annotation_suffix) + 10);
   strcpy (prefix, "\n\032\032pre-");
   strcat (prefix, async_annotation_suffix);
   strcat (prefix, "\n");

   suffix = (char *) alloca (strlen (async_annotation_suffix) + 6);
   strcpy (suffix, "\n\032\032");
   strcat (suffix, async_annotation_suffix);
   strcat (suffix, "\n");

   push_prompt (prefix, (char *) 0, suffix);
 }
    }
  else
    {
      if (strcmp (PREFIX (0), "") && strcmp (SUFFIX (0), ""))
 {

   pop_prompt ();
 }
    }
}
