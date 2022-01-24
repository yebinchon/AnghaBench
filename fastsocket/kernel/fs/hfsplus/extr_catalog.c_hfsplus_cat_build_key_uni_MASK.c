#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct hfsplus_unistr {int /*<<< orphan*/  unicode; int /*<<< orphan*/  length; } ;
struct TYPE_6__ {int /*<<< orphan*/  unicode; void* length; } ;
struct TYPE_5__ {TYPE_2__ name; int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {void* key_len; TYPE_1__ cat; } ;
typedef  TYPE_3__ hfsplus_btree_key ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(hfsplus_btree_key *key, u32 parent,
				      struct hfsplus_unistr *name)
{
	int ustrlen;

	ustrlen = FUNC0(name->length);
	key->cat.parent = FUNC2(parent);
	key->cat.name.length = FUNC1(ustrlen);
	ustrlen *= 2;
	FUNC3(key->cat.name.unicode, name->unicode, ustrlen);
	key->key_len = FUNC1(6 + ustrlen);
}