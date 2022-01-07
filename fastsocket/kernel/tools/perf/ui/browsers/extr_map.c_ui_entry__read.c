
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct newtExitStruct {int dummy; } ;
typedef int * newtComponent ;


 int CTRL (char) ;
 int NEWT_FLAG_SCROLL ;
 int NEWT_KEY_ENTER ;
 int NEWT_KEY_ESCAPE ;
 int NEWT_KEY_LEFT ;
 int newtCenteredWindow (int,int,char const*) ;
 int * newtEntry (int ,int ,char*,int,char const**,int ) ;
 int * newtForm (int *,int *,int ) ;
 int newtFormAddComponent (int *,int *) ;
 int newtFormAddHotKey (int *,int ) ;
 int newtFormDestroy (int *) ;
 int newtFormRun (int *,struct newtExitStruct*) ;
 int newtPopWindow () ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static int ui_entry__read(const char *title, char *bf, size_t size, int width)
{
 struct newtExitStruct es;
 newtComponent form, entry;
 const char *result;
 int err = -1;

 newtCenteredWindow(width, 1, title);
 form = newtForm(((void*)0), ((void*)0), 0);
 if (form == ((void*)0))
  return -1;

 entry = newtEntry(0, 0, "0x", width, &result, NEWT_FLAG_SCROLL);
 if (entry == ((void*)0))
  goto out_free_form;

 newtFormAddComponent(form, entry);
 newtFormAddHotKey(form, NEWT_KEY_ENTER);
 newtFormAddHotKey(form, NEWT_KEY_ESCAPE);
 newtFormAddHotKey(form, NEWT_KEY_LEFT);
 newtFormAddHotKey(form, CTRL('c'));
 newtFormRun(form, &es);

 if (result != ((void*)0)) {
  strncpy(bf, result, size);
  err = 0;
 }
out_free_form:
 newtPopWindow();
 newtFormDestroy(form);
 return err;
}
