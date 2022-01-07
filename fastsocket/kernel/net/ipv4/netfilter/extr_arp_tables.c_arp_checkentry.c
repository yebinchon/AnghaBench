
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arpt_arp {int flags; int invflags; } ;


 int ARPT_F_MASK ;
 int ARPT_INV_MASK ;
 int duprintf (char*,int) ;

__attribute__((used)) static inline int arp_checkentry(const struct arpt_arp *arp)
{
 if (arp->flags & ~ARPT_F_MASK) {
  duprintf("Unknown flag bits set: %08X\n",
    arp->flags & ~ARPT_F_MASK);
  return 0;
 }
 if (arp->invflags & ~ARPT_INV_MASK) {
  duprintf("Unknown invflag bits set: %08X\n",
    arp->invflags & ~ARPT_INV_MASK);
  return 0;
 }

 return 1;
}
