
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int offsetT ;


 int frag_more (int ) ;
 int output_leb128 (int ,int ,int) ;
 int sizeof_leb128 (int ,int) ;

__attribute__((used)) static void
out_sleb128 (offsetT value)
{
  output_leb128 (frag_more (sizeof_leb128 (value, 1)), value, 1);
}
