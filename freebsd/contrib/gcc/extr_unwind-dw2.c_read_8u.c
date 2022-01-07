
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union unaligned {unsigned long u8; } ;



__attribute__((used)) static inline unsigned long
read_8u (const void *p) { const union unaligned *up = p; return up->u8; }
