#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_4__* q; } ;
struct TYPE_7__ {TYPE_4__* e; TYPE_4__* n; } ;
struct TYPE_9__ {TYPE_2__ ec; TYPE_1__ rsa; } ;
struct TYPE_10__ {int key_type; TYPE_3__ key; } ;
typedef  TYPE_4__ br_x509_pkey ;

/* Variables and functions */
#define  BR_KEYTYPE_EC 129 
#define  BR_KEYTYPE_RSA 128 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 

void
FUNC3(br_x509_pkey *pk)
{
	if (pk != NULL) {
		switch (pk->key_type) {
		case BR_KEYTYPE_RSA:
			FUNC2(pk->key.rsa.n);
			FUNC2(pk->key.rsa.e);
			break;
		case BR_KEYTYPE_EC:
			FUNC2(pk->key.ec.q);
			break;
		default:
#ifndef _STANDALONE
			FUNC1(stderr, "Unknown public key type: %u\n",
				(unsigned)pk->key_type);
			FUNC0(EXIT_FAILURE);
#else 
; 
#endif
		}
		FUNC2(pk);
	}
}