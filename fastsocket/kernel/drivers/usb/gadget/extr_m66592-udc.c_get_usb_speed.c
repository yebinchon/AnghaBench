
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct m66592 {int dummy; } ;


 int M66592_DVSTCTR ;
 int M66592_RHST ;
 int m66592_read (struct m66592*,int ) ;

__attribute__((used)) static inline u16 get_usb_speed(struct m66592 *m66592)
{
 return (m66592_read(m66592, M66592_DVSTCTR) & M66592_RHST);
}
