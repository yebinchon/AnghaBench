
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfdump {int * sl; } ;


 int free (int *) ;

__attribute__((used)) static void
unload_sections(struct elfdump *ed)
{
 if (ed->sl != ((void*)0)) {
  free(ed->sl);
  ed->sl = ((void*)0);
 }
}
