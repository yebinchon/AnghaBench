
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tvec_base {int dummy; } ;


 unsigned long TBASE_DEFERRABLE_FLAG ;

__attribute__((used)) static inline struct tvec_base *tbase_get_base(struct tvec_base *base)
{
 return ((struct tvec_base *)((unsigned long)base & ~TBASE_DEFERRABLE_FLAG));
}
