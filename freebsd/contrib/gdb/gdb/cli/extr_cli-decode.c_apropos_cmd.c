
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct re_pattern_buffer {int dummy; } ;
struct cmd_list_element {char* prefixname; struct cmd_list_element** prefixlist; int * doc; int * name; struct cmd_list_element* next; } ;


 int fprintf_filtered (struct ui_file*,char*,char*,int *) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int print_doc_line (struct ui_file*,int *) ;
 int re_search (struct re_pattern_buffer*,int *,int ,int ,int ,int *) ;
 int strlen (int *) ;

void
apropos_cmd (struct ui_file *stream, struct cmd_list_element *commandlist,
    struct re_pattern_buffer *regex, char *prefix)
{
  struct cmd_list_element *c;
  int returnvalue=1;

  for (c=commandlist;c;c=c->next)
    {
      if (c->name != ((void*)0))
 {

   returnvalue=re_search(regex,c->name,strlen(c->name),0,strlen(c->name),((void*)0));
   if (returnvalue >= 0)
     {




       fprintf_filtered (stream, "%s%s -- ", prefix, c->name);
       print_doc_line (stream, c->doc);
       fputs_filtered ("\n", stream);
       returnvalue=0;
     }
 }
      if (c->doc != ((void*)0) && returnvalue != 0)
 {

   if (re_search(regex,c->doc,strlen(c->doc),0,strlen(c->doc),((void*)0)) >=0)
     {




       fprintf_filtered (stream, "%s%s -- ", prefix, c->name);
       print_doc_line (stream, c->doc);
       fputs_filtered ("\n", stream);
     }
 }

      if (c->prefixlist != ((void*)0))
 {



   apropos_cmd (stream,*c->prefixlist,regex,c->prefixname);
 }
    }
}
