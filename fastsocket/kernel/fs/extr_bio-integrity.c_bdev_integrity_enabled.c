
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
struct blk_integrity {int flags; int * generate_fn; int * verify_fn; } ;


 int INTEGRITY_FLAG_READ ;
 int INTEGRITY_FLAG_WRITE ;
 int READ ;
 int WRITE ;
 struct blk_integrity* bdev_get_integrity (struct block_device*) ;

__attribute__((used)) static int bdev_integrity_enabled(struct block_device *bdev, int rw)
{
 struct blk_integrity *bi = bdev_get_integrity(bdev);

 if (bi == ((void*)0))
  return 0;

 if (rw == READ && bi->verify_fn != ((void*)0) &&
     (bi->flags & INTEGRITY_FLAG_READ))
  return 1;

 if (rw == WRITE && bi->generate_fn != ((void*)0) &&
     (bi->flags & INTEGRITY_FLAG_WRITE))
  return 1;

 return 0;
}
