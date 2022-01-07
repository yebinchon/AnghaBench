
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word_type ;
typedef scalar_t__ DI ;



word_type __cmpdi2 (DI x, DI y) { return x < y ? 0 : x == y ? 1 : 2; }
