
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SDL_version {int patch; int minor; int major; } ;


 int EXIT_FAILURE ;
 int SDL_GetError () ;
 int SDL_INIT_TIMER ;
 int SDL_Init (int ) ;
 int SDL_VERSION (struct SDL_version*) ;
 int dbg (char*,int ,int ,int ) ;
 int err (char*,int ) ;
 int usb_init () ;

__attribute__((used)) static int carlu_init()
{
 struct SDL_version compiled;
 int ret;

 SDL_VERSION(&compiled);
 dbg("=== SDL %d.%d.%d ===\n", compiled.major, compiled.minor, compiled.patch);

 ret = SDL_Init(SDL_INIT_TIMER);
 if (ret != 0) {
  err("Unable to initialize SDL: (%s)\n", SDL_GetError());
  return EXIT_FAILURE;
 }

 return usb_init();
}
