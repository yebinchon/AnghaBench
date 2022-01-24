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
struct hash_desc {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hash_desc*,char*) ; 
 int FUNC2 (struct hash_desc*,struct scatterlist*,int) ; 
 int FUNC3 (struct hash_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,void*,int) ; 

int FUNC5(int template_len, void *template, char *digest)
{
	struct hash_desc desc;
	struct scatterlist sg[1];
	int rc;

	rc = FUNC3(&desc);
	if (rc != 0)
		return rc;

	FUNC4(sg, template, template_len);
	rc = FUNC2(&desc, sg, template_len);
	if (!rc)
		rc = FUNC1(&desc, digest);
	FUNC0(desc.tfm);
	return rc;
}