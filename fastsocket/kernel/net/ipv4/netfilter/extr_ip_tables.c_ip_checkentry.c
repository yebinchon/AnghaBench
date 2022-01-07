
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipt_ip {int flags; int invflags; } ;


 int IPT_F_MASK ;
 int IPT_INV_MASK ;
 int duprintf (char*,int) ;

__attribute__((used)) static bool
ip_checkentry(const struct ipt_ip *ip)
{
 if (ip->flags & ~IPT_F_MASK) {
  duprintf("Unknown flag bits set: %08X\n",
    ip->flags & ~IPT_F_MASK);
  return 0;
 }
 if (ip->invflags & ~IPT_INV_MASK) {
  duprintf("Unknown invflag bits set: %08X\n",
    ip->invflags & ~IPT_INV_MASK);
  return 0;
 }
 return 1;
}
