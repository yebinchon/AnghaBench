
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_Quit () ;
 int usb_exit () ;

__attribute__((used)) static void carlu_exit()
{
 SDL_Quit();
 usb_exit();
}
