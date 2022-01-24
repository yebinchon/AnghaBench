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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct wb35_reg_queue {int DIRECT; int INDEX; int RESERVED_VALID; struct wb35_reg_queue* Next; struct urb* urb; struct usb_ctrlrequest* pUsbReq; int /*<<< orphan*/  RESERVED; int /*<<< orphan*/  VALUE; } ;
struct wb35_reg {int /*<<< orphan*/  EP0VM_spin_lock; struct wb35_reg_queue* reg_last; struct wb35_reg_queue* reg_first; } ;
struct usb_ctrlrequest {int bRequestType; int bRequest; void* wLength; void* wIndex; void* wValue; } ;
struct urb {int dummy; } ;
struct hw_data {scalar_t__ SurpriseRemove; struct wb35_reg reg; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct hw_data*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wb35_reg_queue*) ; 
 struct wb35_reg_queue* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct urb* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 

unsigned char
FUNC10( struct hw_data * pHwData, u16 RegisterNo, u32 RegisterValue,
				s8 *pValue, s8 Len)
{
	struct wb35_reg *reg = &pHwData->reg;
	struct usb_ctrlrequest *dr;
	struct urb	*urb = NULL;
	struct wb35_reg_queue *reg_queue = NULL;
	u16		UrbSize;

	// Module shutdown
	if (pHwData->SurpriseRemove)
		return false;

	// update the register by send urb request------------------------------------
	UrbSize = sizeof(struct wb35_reg_queue) + sizeof(struct usb_ctrlrequest);
	reg_queue = FUNC4(UrbSize, GFP_ATOMIC);
	urb = FUNC8(0, GFP_ATOMIC);
	if (urb && reg_queue) {
		reg_queue->DIRECT = 1;// burst write register
		reg_queue->INDEX = RegisterNo;
		reg_queue->VALUE = FUNC2(RegisterValue);
		//NOTE : Users must guarantee the size of value will not exceed the buffer size.
		FUNC5(reg_queue->RESERVED, pValue, Len);
		reg_queue->RESERVED_VALID = true;
		dr = (struct usb_ctrlrequest *)((u8 *)reg_queue + sizeof(struct wb35_reg_queue));
		dr->bRequestType = USB_TYPE_VENDOR|USB_DIR_OUT |USB_RECIP_DEVICE;
		dr->bRequest = 0x03; // USB or vendor-defined request code, burst mode
		dr->wValue = FUNC1(0x0);
		dr->wIndex = FUNC1(RegisterNo);
		dr->wLength = FUNC1(4);

		// Enter the sending queue
		reg_queue->Next = NULL;
		reg_queue->pUsbReq = dr;
		reg_queue->urb = urb;
		FUNC6 (&reg->EP0VM_spin_lock );
		if( reg->reg_first == NULL )
			reg->reg_first = reg_queue;
		else
			reg->reg_last->Next = reg_queue;
		reg->reg_last = reg_queue;

		FUNC7 ( &reg->EP0VM_spin_lock );

		// Start EP0VM
		FUNC0(pHwData);
		return true;
	} else {
		if (urb)
			FUNC9(urb);
		FUNC3(reg_queue);
		return false;
	}
}