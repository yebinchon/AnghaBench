
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crtc2 ;
 int matroxfb_unregister_driver (int *) ;

__attribute__((used)) static void matroxfb_crtc2_exit(void) {
 matroxfb_unregister_driver(&crtc2);
}
