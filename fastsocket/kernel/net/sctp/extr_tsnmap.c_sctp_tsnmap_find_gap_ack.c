
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int find_next_bit (unsigned long*,int,int) ;
 int find_next_zero_bit (unsigned long*,int,int) ;

__attribute__((used)) static void sctp_tsnmap_find_gap_ack(unsigned long *map, __u16 off,
         __u16 len, __u16 *start, __u16 *end)
{
 int i = off;
 i = find_next_bit(map, len, off);
 if (i < len)
  *start = i;


 if (*start) {



  i = find_next_zero_bit(map, len, i);
  if (i < len)
   *end = i - 1;
 }
}
