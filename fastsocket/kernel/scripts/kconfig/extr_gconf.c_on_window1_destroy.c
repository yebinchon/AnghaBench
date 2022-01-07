
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkObject ;


 int gtk_main_quit () ;

void on_window1_destroy(GtkObject * object, gpointer user_data)
{
 gtk_main_quit();
}
