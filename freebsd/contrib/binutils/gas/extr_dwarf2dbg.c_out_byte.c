
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FRAG_APPEND_1_CHAR (int) ;

__attribute__((used)) static inline void
out_byte (int byte)
{
  FRAG_APPEND_1_CHAR (byte);
}
