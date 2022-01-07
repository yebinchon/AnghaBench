
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* note_type_unknown (unsigned int) ;

__attribute__((used)) static const char *
note_type_freebsd(unsigned int nt)
{
 switch (nt) {
 case 1: return "NT_FREEBSD_ABI_TAG";
 case 2: return "NT_FREEBSD_NOINIT_TAG";
 case 3: return "NT_FREEBSD_ARCH_TAG";
 case 4: return "NT_FREEBSD_FEATURE_CTL";
 default: return (note_type_unknown(nt));
 }
}
