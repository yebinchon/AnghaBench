
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int const* db_scale_4bit ;
 unsigned int const* db_scale_5bit ;
 unsigned int const* db_scale_6bit ;

__attribute__((used)) static const unsigned int *find_db_scale(unsigned int maxval)
{
 switch (maxval) {
 case 0x0f: return db_scale_4bit;
 case 0x1f: return db_scale_5bit;
 case 0x3f: return db_scale_6bit;
 }
 return ((void*)0);
}
