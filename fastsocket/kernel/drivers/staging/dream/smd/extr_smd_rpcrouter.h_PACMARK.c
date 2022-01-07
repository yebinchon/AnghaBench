
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t PACMARK(uint32_t len, uint32_t mid, uint32_t first,
          uint32_t last)
{
 return (len & 0xFFFF) |
   ((mid & 0xFF) << 16) |
   ((!!first) << 30) |
   ((!!last) << 31);
}
