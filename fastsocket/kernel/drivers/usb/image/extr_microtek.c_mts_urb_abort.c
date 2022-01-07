
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mts_desc {int urb; } ;


 int MTS_DEBUG_GOT_HERE () ;
 int mts_debug_dump (struct mts_desc*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static inline void mts_urb_abort(struct mts_desc* desc) {
 MTS_DEBUG_GOT_HERE();
 mts_debug_dump(desc);

 usb_kill_urb( desc->urb );
}
