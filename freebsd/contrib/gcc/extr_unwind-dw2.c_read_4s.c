
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union unaligned {int s4; } ;



__attribute__((used)) static inline int
read_4s (const void *p) { const union unaligned *up = p; return up->s4; }
