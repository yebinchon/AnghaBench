
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 int UBIFS_COMPR_TYPES_CNT ;
 int ubifs_assert (int) ;
 TYPE_1__** ubifs_compressors ;

__attribute__((used)) static inline const char *ubifs_compr_name(int compr_type)
{
 ubifs_assert(compr_type >= 0 && compr_type < UBIFS_COMPR_TYPES_CNT);
 return ubifs_compressors[compr_type]->name;
}
