
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EWMA_DIV ;

__attribute__((used)) static inline int
minstrel_ewma(int old, int new, int weight)
{
 return (new * (EWMA_DIV - weight) + old * weight) / EWMA_DIV;
}
