
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee802_11_elems {int dummy; } ;


 int ieee802_11_parse_elems_crc (int const*,size_t,int,struct ieee802_11_elems*,int ,int ) ;

__attribute__((used)) static inline void ieee802_11_parse_elems(const u8 *start, size_t len,
       bool action,
       struct ieee802_11_elems *elems)
{
 ieee802_11_parse_elems_crc(start, len, action, elems, 0, 0);
}
