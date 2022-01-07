
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union unaligned {int u2; } ;



__attribute__((used)) static inline int
read_2u (const void *p) { const union unaligned *up = p; return up->u2; }
