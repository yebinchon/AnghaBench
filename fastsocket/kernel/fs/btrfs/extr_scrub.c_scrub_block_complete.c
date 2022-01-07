
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_block {int no_io_error_seen; } ;


 int scrub_checksum (struct scrub_block*) ;
 int scrub_handle_errored_block (struct scrub_block*) ;

__attribute__((used)) static void scrub_block_complete(struct scrub_block *sblock)
{
 if (!sblock->no_io_error_seen)
  scrub_handle_errored_block(sblock);
 else
  scrub_checksum(sblock);
}
