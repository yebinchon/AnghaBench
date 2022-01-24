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
struct kvm_ioeventfd {int flags; int len; scalar_t__ addr; int /*<<< orphan*/  datamatch; int /*<<< orphan*/  fd; } ;
struct kvm {int /*<<< orphan*/  slots_lock; int /*<<< orphan*/  ioeventfds; } ;
struct eventfd_ctx {int dummy; } ;
struct _ioeventfd {scalar_t__ addr; int length; int wildcard; int /*<<< orphan*/  list; int /*<<< orphan*/  dev; int /*<<< orphan*/  datamatch; struct eventfd_ctx* eventfd; } ;
typedef  enum kvm_bus { ____Placeholder_kvm_bus } kvm_bus ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct eventfd_ctx*) ; 
 int KVM_IOEVENTFD_FLAG_DATAMATCH ; 
 int KVM_IOEVENTFD_FLAG_PIO ; 
 int KVM_IOEVENTFD_VALID_FLAG_MASK ; 
 int KVM_MMIO_BUS ; 
 int KVM_PIO_BUS ; 
 int FUNC2 (struct eventfd_ctx*) ; 
 struct eventfd_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct eventfd_ctx*) ; 
 scalar_t__ FUNC5 (struct kvm*,struct _ioeventfd*) ; 
 int /*<<< orphan*/  ioeventfd_ops ; 
 int /*<<< orphan*/  FUNC6 (struct _ioeventfd*) ; 
 int FUNC7 (struct kvm*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct _ioeventfd* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct kvm *kvm, struct kvm_ioeventfd *args)
{
	int                       pio = args->flags & KVM_IOEVENTFD_FLAG_PIO;
	enum kvm_bus              bus_idx = pio ? KVM_PIO_BUS : KVM_MMIO_BUS;
	struct _ioeventfd        *p;
	struct eventfd_ctx       *eventfd;
	int                       ret;

	/* must be natural-word sized */
	switch (args->len) {
	case 1:
	case 2:
	case 4:
	case 8:
		break;
	default:
		return -EINVAL;
	}

	/* check for range overflow */
	if (args->addr + args->len < args->addr)
		return -EINVAL;

	/* check for extra flags that we don't understand */
	if (args->flags & ~KVM_IOEVENTFD_VALID_FLAG_MASK)
		return -EINVAL;

	eventfd = FUNC3(args->fd);
	if (FUNC1(eventfd))
		return FUNC2(eventfd);

	p = FUNC9(sizeof(*p), GFP_KERNEL);
	if (!p) {
		ret = -ENOMEM;
		goto fail;
	}

	FUNC0(&p->list);
	p->addr    = args->addr;
	p->length  = args->len;
	p->eventfd = eventfd;

	/* The datamatch feature is optional, otherwise this is a wildcard */
	if (args->flags & KVM_IOEVENTFD_FLAG_DATAMATCH)
		p->datamatch = args->datamatch;
	else
		p->wildcard = true;

	FUNC11(&kvm->slots_lock);

	/* Verify that there isnt a match already */
	if (FUNC5(kvm, p)) {
		ret = -EEXIST;
		goto unlock_fail;
	}

	FUNC8(&p->dev, &ioeventfd_ops);

	ret = FUNC7(kvm, bus_idx, &p->dev);
	if (ret < 0)
		goto unlock_fail;

	FUNC10(&p->list, &kvm->ioeventfds);

	FUNC12(&kvm->slots_lock);

	return 0;

unlock_fail:
	FUNC12(&kvm->slots_lock);

fail:
	FUNC6(p);
	FUNC4(eventfd);

	return ret;
}