
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* note_type_unknown (unsigned int) ;

__attribute__((used)) static const char *
note_type_netbsd(unsigned int nt)
{
 switch (nt) {
 case 1: return "NT_NETBSD_IDENT";
 default: return (note_type_unknown(nt));
 }
}
