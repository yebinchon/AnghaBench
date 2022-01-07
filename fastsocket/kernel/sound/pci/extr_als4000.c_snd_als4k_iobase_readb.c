
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum als4k_iobase_t { ____Placeholder_als4k_iobase_t } als4k_iobase_t ;


 int inb (int) ;

__attribute__((used)) static inline u8 snd_als4k_iobase_readb(unsigned long iobase,
      enum als4k_iobase_t reg)
{
 return inb(iobase + reg);
}
