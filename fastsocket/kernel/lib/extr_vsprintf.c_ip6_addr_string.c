
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct printf_spec {int dummy; } ;


 int ip6_compressed_string (char*,int const*) ;
 int ip6_string (char*,int const*,char const*) ;
 char* string (char*,char*,char*,struct printf_spec) ;

__attribute__((used)) static char *ip6_addr_string(char *buf, char *end, const u8 *addr,
        struct printf_spec spec, const char *fmt)
{
 char ip6_addr[sizeof("xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:255.255.255.255")];

 if (fmt[0] == 'I' && fmt[2] == 'c')
  ip6_compressed_string(ip6_addr, addr);
 else
  ip6_string(ip6_addr, addr, fmt);

 return string(buf, end, ip6_addr, spec);
}
