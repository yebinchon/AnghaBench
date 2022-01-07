
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int * tas3004_treble_table ;

__attribute__((used)) static inline u8 tas3004_treble(int idx)
{
 return tas3004_treble_table[idx];
}
