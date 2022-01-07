
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tvec_base {int dummy; } ;


 unsigned int TBASE_DEFERRABLE_FLAG ;

__attribute__((used)) static inline unsigned int tbase_get_deferrable(struct tvec_base *base)
{
 return ((unsigned int)(unsigned long)base & TBASE_DEFERRABLE_FLAG);
}
