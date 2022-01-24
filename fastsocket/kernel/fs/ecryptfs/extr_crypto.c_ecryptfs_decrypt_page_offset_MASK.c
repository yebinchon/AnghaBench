#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
struct ecryptfs_crypt_stat {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ecryptfs_crypt_stat*,struct scatterlist*,struct scatterlist*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,struct page*,int,int) ; 

__attribute__((used)) static int
FUNC3(struct ecryptfs_crypt_stat *crypt_stat,
			     struct page *dst_page, int dst_offset,
			     struct page *src_page, int src_offset, int size,
			     unsigned char *iv)
{
	struct scatterlist src_sg, dst_sg;

	FUNC1(&src_sg, 1);
	FUNC2(&src_sg, src_page, size, src_offset);

	FUNC1(&dst_sg, 1);
	FUNC2(&dst_sg, dst_page, size, dst_offset);

	return FUNC0(crypt_stat, &dst_sg, &src_sg, size, iv);
}