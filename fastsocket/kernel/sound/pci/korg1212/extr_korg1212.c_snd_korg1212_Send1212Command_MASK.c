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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct snd_korg1212 {size_t cardState; int /*<<< orphan*/  cmdRetryCount; int /*<<< orphan*/  mailbox3Ptr; int /*<<< orphan*/  outDoorbellPtr; int /*<<< orphan*/  mailbox0Ptr; int /*<<< orphan*/  mailbox1Ptr; int /*<<< orphan*/  mailbox2Ptr; } ;
typedef  enum korg1212_dbcnst { ____Placeholder_korg1212_dbcnst } korg1212_dbcnst ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_ACK_DELAY ; 
 int COMMAND_ACK_MASK ; 
 int DOORBELL_VAL_MASK ; 
 int K1212_CMDRET_CardUninitialized ; 
 int K1212_CMDRET_NoAckFromCard ; 
 int K1212_CMDRET_Success ; 
 int K1212_DB_BootFromDSPPage4 ; 
 int K1212_DB_RebootCard ; 
 int K1212_DB_StartDSPDownload ; 
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ MAX_COMMAND_RETRIES ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stateName ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_korg1212 *korg1212,
					enum korg1212_dbcnst doorbellVal,
					u32 mailBox0Val, u32 mailBox1Val,
					u32 mailBox2Val, u32 mailBox3Val)
{
        u32 retryCount;
        u16 mailBox3Lo;
	int rc = K1212_CMDRET_Success;

        if (!korg1212->outDoorbellPtr) {
		FUNC1("K1212_DEBUG: CardUninitialized\n");
                return K1212_CMDRET_CardUninitialized;
	}

	FUNC0("K1212_DEBUG: Card <- 0x%08x 0x%08x [%s]\n",
			   doorbellVal, mailBox0Val, stateName[korg1212->cardState]);
        for (retryCount = 0; retryCount < MAX_COMMAND_RETRIES; retryCount++) {
		FUNC4(mailBox3Val, korg1212->mailbox3Ptr);
                FUNC4(mailBox2Val, korg1212->mailbox2Ptr);
                FUNC4(mailBox1Val, korg1212->mailbox1Ptr);
                FUNC4(mailBox0Val, korg1212->mailbox0Ptr);
                FUNC4(doorbellVal, korg1212->outDoorbellPtr);  // interrupt the card

                // --------------------------------------------------------------
                // the reboot command will not give an acknowledgement.
                // --------------------------------------------------------------
                if ( doorbellVal == K1212_DB_RebootCard ||
                	doorbellVal == K1212_DB_BootFromDSPPage4 ||
                        doorbellVal == K1212_DB_StartDSPDownload ) {
                        rc = K1212_CMDRET_Success;
                        break;
                }

                // --------------------------------------------------------------
                // See if the card acknowledged the command.  Wait a bit, then
                // read in the low word of mailbox3.  If the MSB is set and the
                // low byte is equal to the doorbell value, then it ack'd.
                // --------------------------------------------------------------
                FUNC3(COMMAND_ACK_DELAY);
                mailBox3Lo = FUNC2(korg1212->mailbox3Ptr);
                if (mailBox3Lo & COMMAND_ACK_MASK) {
                	if ((mailBox3Lo & DOORBELL_VAL_MASK) == (doorbellVal & DOORBELL_VAL_MASK)) {
				FUNC1("K1212_DEBUG: Card <- Success\n");
                                rc = K1212_CMDRET_Success;
				break;
                        }
                }
	}
        korg1212->cmdRetryCount += retryCount;

	if (retryCount >= MAX_COMMAND_RETRIES) {
		FUNC1("K1212_DEBUG: Card <- NoAckFromCard\n");
        	rc = K1212_CMDRET_NoAckFromCard;
	}

	return rc;
}