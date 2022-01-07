
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word_type ;
typedef scalar_t__ uDI ;



word_type __ucmpdi2 (uDI x, uDI y) { return x < y ? 0 : x == y ? 1 : 2; }
