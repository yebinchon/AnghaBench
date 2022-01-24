#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct nlattr {int dummy; } ;
struct ip_set_hash_nets {int dummy; } ;
struct ip_set_hash {TYPE_1__* table; scalar_t__ maxelem; int /*<<< orphan*/  timeout; int /*<<< orphan*/  initval; } ;
struct ip_set {scalar_t__ family; struct ip_set_hash* data; int /*<<< orphan*/  name; int /*<<< orphan*/ * variant; } ;
struct TYPE_3__ {int /*<<< orphan*/  htable_bits; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IPSET_ATTR_HASHSIZE ; 
 size_t IPSET_ATTR_MAXELEM ; 
 size_t IPSET_ATTR_TIMEOUT ; 
 scalar_t__ IPSET_DEFAULT_HASHSIZE ; 
 scalar_t__ IPSET_DEFAULT_MAXELEM ; 
 int IPSET_ERR_INVALID_FAMILY ; 
 int IPSET_ERR_PROTOCOL ; 
 scalar_t__ IPSET_MIMINAL_HASHSIZE ; 
 int /*<<< orphan*/  IPSET_NO_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_set*) ; 
 int /*<<< orphan*/  hash_netport4_tvariant ; 
 int /*<<< orphan*/  hash_netport4_variant ; 
 int /*<<< orphan*/  FUNC2 (struct ip_set*) ; 
 int /*<<< orphan*/  hash_netport6_tvariant ; 
 int /*<<< orphan*/  hash_netport6_variant ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (size_t) ; 
 scalar_t__ FUNC6 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr**,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ip_set_hash*) ; 
 struct ip_set_hash* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct ip_set_hash*,TYPE_1__*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int
FUNC14(struct ip_set *set, struct nlattr *tb[], u32 flags)
{
	struct ip_set_hash *h;
	u32 hashsize = IPSET_DEFAULT_HASHSIZE, maxelem = IPSET_DEFAULT_MAXELEM;
	u8 hbits;
	size_t hsize;

	if (!(set->family == AF_INET || set->family == AF_INET6))
		return -IPSET_ERR_INVALID_FAMILY;

	if (FUNC13(!FUNC7(tb, IPSET_ATTR_HASHSIZE) ||
		     !FUNC7(tb, IPSET_ATTR_MAXELEM) ||
		     !FUNC7(tb, IPSET_ATTR_TIMEOUT)))
		return -IPSET_ERR_PROTOCOL;

	if (tb[IPSET_ATTR_HASHSIZE]) {
		hashsize = FUNC6(tb[IPSET_ATTR_HASHSIZE]);
		if (hashsize < IPSET_MIMINAL_HASHSIZE)
			hashsize = IPSET_MIMINAL_HASHSIZE;
	}

	if (tb[IPSET_ATTR_MAXELEM])
		maxelem = FUNC6(tb[IPSET_ATTR_MAXELEM]);

	h = FUNC11(sizeof(*h)
		    + sizeof(struct ip_set_hash_nets)
		      * (set->family == AF_INET ? 32 : 128), GFP_KERNEL);
	if (!h)
		return -ENOMEM;

	h->maxelem = maxelem;
	FUNC0(&h->initval, sizeof(h->initval));
	h->timeout = IPSET_NO_TIMEOUT;

	hbits = FUNC3(hashsize);
	hsize = FUNC4(hbits);
	if (hsize == 0) {
		FUNC10(h);
		return -ENOMEM;
	}
	h->table = FUNC5(hsize);
	if (!h->table) {
		FUNC10(h);
		return -ENOMEM;
	}
	h->table->htable_bits = hbits;

	set->data = h;

	if (tb[IPSET_ATTR_TIMEOUT]) {
		h->timeout = FUNC8(tb[IPSET_ATTR_TIMEOUT]);

		set->variant = set->family == AF_INET
			? &hash_netport4_tvariant : &hash_netport6_tvariant;

		if (set->family == AF_INET)
			FUNC1(set);
		else
			FUNC2(set);
	} else {
		set->variant = set->family == AF_INET
			? &hash_netport4_variant : &hash_netport6_variant;
	}

	FUNC12("create %s hashsize %u (%u) maxelem %u: %p(%p)\n",
		 set->name, FUNC9(h->table->htable_bits),
		 h->table->htable_bits, h->maxelem, set->data, h->table);

	return 0;
}