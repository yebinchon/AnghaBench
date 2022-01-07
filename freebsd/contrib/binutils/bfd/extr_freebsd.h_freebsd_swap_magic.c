
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NMAGIC ;
 int OMAGIC ;
 int QMAGIC ;
 int ZMAGIC ;
 long bfd_getb32 (void*) ;
 long bfd_getl32 (void*) ;

__attribute__((used)) static long
freebsd_swap_magic (void *ext)
{
  long linfo = bfd_getl32(ext);
  long binfo = bfd_getb32(ext);
  int lmagic = linfo & 0xffff;
  int bmagic = binfo & 0xffff;
  int lmagic_ok = lmagic == OMAGIC || lmagic == NMAGIC ||
    lmagic == ZMAGIC || lmagic == QMAGIC;
  int bmagic_ok = bmagic == OMAGIC || bmagic == NMAGIC ||
    bmagic == ZMAGIC || bmagic == QMAGIC;

  return bmagic_ok && !lmagic_ok ? binfo : linfo;
}
