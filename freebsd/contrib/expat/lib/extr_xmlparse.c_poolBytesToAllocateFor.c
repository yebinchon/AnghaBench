
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XML_Char ;


 int BLOCK ;
 size_t const INT_MAX ;
 unsigned int offsetof (int ,int ) ;
 int s ;

__attribute__((used)) static size_t
poolBytesToAllocateFor(int blockSize)
{







  const size_t stretch = sizeof(XML_Char);

  if (blockSize <= 0)
    return 0;

  if (blockSize > (int)(INT_MAX / stretch))
    return 0;

  {
    const int stretchedBlockSize = blockSize * (int)stretch;
    const int bytesToAllocate = (int)(
        offsetof(BLOCK, s) + (unsigned)stretchedBlockSize);
    if (bytesToAllocate < 0)
      return 0;

    return (size_t)bytesToAllocate;
  }
}
