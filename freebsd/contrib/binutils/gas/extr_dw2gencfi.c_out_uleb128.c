
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addressT ;


 int frag_more (int ) ;
 int output_leb128 (int ,int ,int ) ;
 int sizeof_leb128 (int ,int ) ;

__attribute__((used)) static void
out_uleb128 (addressT value)
{
  output_leb128 (frag_more (sizeof_leb128 (value, 0)), value, 0);
}
