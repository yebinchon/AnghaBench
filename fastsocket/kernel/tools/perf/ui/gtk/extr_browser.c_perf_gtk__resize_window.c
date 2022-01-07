
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int width; int height; } ;
struct TYPE_7__ {int window; } ;
typedef TYPE_1__ GtkWidget ;
typedef int GdkScreen ;
typedef TYPE_2__ GdkRectangle ;


 int GTK_WINDOW (TYPE_1__*) ;
 int gdk_screen_get_monitor_at_window (int *,int ) ;
 int gdk_screen_get_monitor_geometry (int *,int,TYPE_2__*) ;
 int * gtk_widget_get_screen (TYPE_1__*) ;
 int gtk_window_resize (int ,int,int) ;

__attribute__((used)) static void perf_gtk__resize_window(GtkWidget *window)
{
 GdkRectangle rect;
 GdkScreen *screen;
 int monitor;
 int height;
 int width;

 screen = gtk_widget_get_screen(window);

 monitor = gdk_screen_get_monitor_at_window(screen, window->window);

 gdk_screen_get_monitor_geometry(screen, monitor, &rect);

 width = rect.width * 3 / 4;
 height = rect.height * 3 / 4;

 gtk_window_resize(GTK_WINDOW(window), width, height);
}
