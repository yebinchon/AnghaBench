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
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u8_t ;
typedef  int u32_t ;
typedef  int u16_t ;

/* Variables and functions */
 int ZM_BIT_3 ; 
 int ZM_BIT_6 ; 
 int ZM_BIT_7 ; 
 int ZM_BIT_8 ; 
 int ZM_BIT_9 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC4(zdev_t* dev, zbuf_t* buf, u16_t offset)
{
    u8_t   packetType, keyType, code, identifier, type, flags;
    u16_t  packetLen, keyInfo, keyLen, keyDataLen, length, Op_Code;
    u32_t  replayCounterH, replayCounterL, vendorId, VendorType;

    /* EAPOL packet type */
    packetType = FUNC3(dev, buf, offset+1); // 0: EAP-Packet
                                                       // 1: EAPOL-Start
                                                       // 2: EAPOL-Logoff
                                                       // 3: EAPOL-Key
                                                       // 4: EAPOL-Encapsulated-ASF-Alert

    /* EAPOL frame format */
    /*  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15   */
    /* -----------------------------------------------   */
    /*            PAE Ethernet Type (0x888e)             */
    /* ----------------------------------------------- 2 */
    /*     Protocol Version    |         Type            */
    /* ----------------------------------------------- 4 */
    /*                       Length                      */
    /* ----------------------------------------------- 6 */
    /*                    Packet Body                    */
    /* ----------------------------------------------- N */

    /* EAPOL body length */
    packetLen = (((u16_t) FUNC3(dev, buf, offset+2)) << 8) +
                FUNC3(dev, buf, offset+3);

    if( packetType == 0 )
    { // EAP-Packet

        /* EAP-Packet Code */
        code = FUNC3(dev, buf, offset+4); // 1 : Request
                                                     // 2 : Response
                                                     // 3 : Success
                                                     // 4 : Failure
        // An EAP packet of the type of Success and Failure has no Data field, and has a length of 4.

        /* EAP Packet format */
        /*  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15   */
        /* -----------------------------------------------   */
        /*           Code          |        Identifier       */
        /* ----------------------------------------------- 2 */
        /*                       Length                      */
        /* ----------------------------------------------- 4 */
        /*                        Data                       */
        /* ----------------------------------------------- N */

        FUNC0("EAP-Packet");
        FUNC1("Packet Length = ", packetLen);
        FUNC1("EAP-Packet Code = ", code);

        if( code == 1 )
        {
            FUNC0("EAP-Packet Request");

            /* EAP-Packet Identifier */
            identifier = FUNC3(dev, buf, offset+5);
            /* EAP-Packet Length */
            length = (((u16_t) FUNC3(dev, buf, offset+6)) << 8) +
                      FUNC3(dev, buf, offset+7);
            /* EAP-Packet Type */
            type = FUNC3(dev, buf, offset+8); // 1   : Identity
                                                         // 2   : Notification
                                                         // 3   : Nak (Response Only)
                                                         // 4   : MD5-Challenge
                                                         // 5   : One Time Password (OTP)
                                                         // 6   : Generic Token Card (GTC)
                                                         // 254 : (Expanded Types)Wi-Fi Protected Setup
                                                         // 255 : Experimental Use

            /* The data field in an EAP packet of the type of Request or Response is in the format shown bellowing */
            /*  0  1  2  3  4  5  6  7             N             */
            /* -----------------------------------------------   */
            /*           Type          |        Type Data        */
            /* -----------------------------------------------   */

            FUNC1("EAP-Packet Identifier = ", identifier);
            FUNC1("EAP-Packet Length = ", length);
            FUNC1("EAP-Packet Type = ", type);

            if( type == 1 )
            {
                FUNC0("EAP-Packet Request Identity");
            }
            else if( type == 2 )
            {
                FUNC0("EAP-Packet Request Notification");
            }
            else if( type == 4 )
            {
                FUNC0("EAP-Packet Request MD5-Challenge");
            }
            else if( type == 5 )
            {
                FUNC0("EAP-Packet Request One Time Password");
            }
            else if( type == 6 )
            {
                FUNC0("EAP-Packet Request Generic Token Card");
            }
            else if( type == 254 )
            {
                FUNC0("EAP-Packet Request Wi-Fi Protected Setup");

                /* 0                   1                   2                   3   */
                /* 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 */
                /*+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+*/
                /*|     Type      |               Vendor-Id                       |*/
                /*+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+*/
                /*|                          Vendor-Type                          |*/
                /*+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+*/
                /*|              Vendor data...                                    */
                /*+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+                        */

                /* EAP-Packet Vendor ID */
                vendorId = (((u32_t) FUNC3(dev, buf, offset+9)) << 16) +
                           (((u32_t) FUNC3(dev, buf, offset+10)) << 8) +
                           FUNC3(dev, buf, offset+11);
                /* EAP-Packet Vendor Type */
                VendorType = (((u32_t) FUNC3(dev, buf, offset+12)) << 24) +
                             (((u32_t) FUNC3(dev, buf, offset+13)) << 16) +
                             (((u32_t) FUNC3(dev, buf, offset+14)) << 8) +
                             FUNC3(dev, buf, offset+15);
                /* EAP-Packet Op Code */
                Op_Code = (((u16_t) FUNC3(dev, buf, offset+16)) << 8) +
                          FUNC3(dev, buf, offset+17);
                /* EAP-Packet Flags */
                flags = FUNC3(dev, buf, offset+18);

                FUNC1("EAP-Packet Vendor ID = ", vendorId);
                FUNC1("EAP-Packet Venodr Type = ", VendorType);
                FUNC1("EAP-Packet Op Code = ", Op_Code);
                FUNC1("EAP-Packet Flags = ", flags);
            }
        }
        else if( code == 2 )
        {
            FUNC0("EAP-Packet Response");

            /* EAP-Packet Identifier */
            identifier = FUNC3(dev, buf, offset+5);
            /* EAP-Packet Length */
            length = (((u16_t) FUNC3(dev, buf, offset+6)) << 8) +
                      FUNC3(dev, buf, offset+7);
            /* EAP-Packet Type */
            type = FUNC3(dev, buf, offset+8);

            FUNC1("EAP-Packet Identifier = ", identifier);
            FUNC1("EAP-Packet Length = ", length);
            FUNC1("EAP-Packet Type = ", type);

            if( type == 1 )
            {
                FUNC0("EAP-Packet Response Identity");
            }
            else if( type == 2 )
            {
                FUNC0("EAP-Packet Request Notification");
            }
            else if( type == 3 )
            {
                FUNC0("EAP-Packet Request Nak");
            }
            else if( type == 4 )
            {
                FUNC0("EAP-Packet Request MD5-Challenge");
            }
            else if( type == 5 )
            {
                FUNC0("EAP-Packet Request One Time Password");
            }
            else if( type == 6 )
            {
                FUNC0("EAP-Packet Request Generic Token Card");
            }
            else if( type == 254 )
            {
                FUNC0("EAP-Packet Response Wi-Fi Protected Setup");

                /* EAP-Packet Vendor ID */
                vendorId = (((u32_t) FUNC3(dev, buf, offset+9)) << 16) +
                           (((u32_t) FUNC3(dev, buf, offset+10)) << 8) +
                           FUNC3(dev, buf, offset+11);
                /* EAP-Packet Vendor Type */
                VendorType = (((u32_t) FUNC3(dev, buf, offset+12)) << 24) +
                             (((u32_t) FUNC3(dev, buf, offset+13)) << 16) +
                             (((u32_t) FUNC3(dev, buf, offset+14)) << 8) +
                             FUNC3(dev, buf, offset+15);
                /* EAP-Packet Op Code */
                Op_Code = (((u16_t) FUNC3(dev, buf, offset+16)) << 8) +
                          FUNC3(dev, buf, offset+17);
                /* EAP-Packet Flags */
                flags = FUNC3(dev, buf, offset+18);

                FUNC1("EAP-Packet Vendor ID = ", vendorId);
                FUNC1("EAP-Packet Venodr Type = ", VendorType);
                FUNC1("EAP-Packet Op Code = ", Op_Code);
                FUNC1("EAP-Packet Flags = ", flags);
            }
        }
        else if( code == 3 )
        {
            FUNC0("EAP-Packet Success");

            /* EAP-Packet Identifier */
            identifier = FUNC3(dev, buf, offset+5);
            /* EAP-Packet Length */
            length = (((u16_t) FUNC3(dev, buf, offset+6)) << 8) +
                      FUNC3(dev, buf, offset+7);

            FUNC1("EAP-Packet Identifier = ", identifier);
            FUNC1("EAP-Packet Length = ", length);
        }
        else if( code == 4 )
        {
            FUNC0("EAP-Packet Failure");

            /* EAP-Packet Identifier */
            identifier = FUNC3(dev, buf, offset+5);
            /* EAP-Packet Length */
            length = (((u16_t) FUNC3(dev, buf, offset+6)) << 8) +
                      FUNC3(dev, buf, offset+7);

            FUNC1("EAP-Packet Identifier = ", identifier);
            FUNC1("EAP-Packet Length = ", length);
        }
    }
    else if( packetType == 1 )
    { // EAPOL-Start
        FUNC0("EAPOL-Start");
    }
    else if( packetType == 2 )
    { // EAPOL-Logoff
        FUNC0("EAPOL-Logoff");
    }
    else if( packetType == 3 )
    { // EAPOL-Key
        /* EAPOL-Key type */
        keyType = FUNC3(dev, buf, offset+4);
        /* EAPOL-Key information */
        keyInfo = (((u16_t) FUNC3(dev, buf, offset+5)) << 8) +
                  FUNC3(dev, buf, offset+6);
        /* EAPOL-Key length */
        keyLen = (((u16_t) FUNC3(dev, buf, offset+7)) << 8) +
                 FUNC3(dev, buf, offset+8);
        /* EAPOL-Key replay counter (high double word) */
        replayCounterH = (((u32_t) FUNC3(dev, buf, offset+9)) << 24) +
                         (((u32_t) FUNC3(dev, buf, offset+10)) << 16) +
                         (((u32_t) FUNC3(dev, buf, offset+11)) << 8) +
                         FUNC3(dev, buf, offset+12);
        /* EAPOL-Key replay counter (low double word) */
        replayCounterL = (((u32_t) FUNC3(dev, buf, offset+13)) << 24) +
                         (((u32_t) FUNC3(dev, buf, offset+14)) << 16) +
                         (((u32_t) FUNC3(dev, buf, offset+15)) << 8) +
                         FUNC3(dev, buf, offset+16);
        /* EAPOL-Key data length */
        keyDataLen = (((u16_t) FUNC3(dev, buf, offset+97)) << 8) +
                     FUNC3(dev, buf, offset+98);

        FUNC0("EAPOL-Key");
        FUNC1("packet length = ", packetLen);

        if ( keyType == 254 )
        {
            FUNC0("key type = 254 (SSN key descriptor)");
        }
        else
        {
            FUNC2("key type = 0x", keyType);
        }

        FUNC2("replay counter(L) = ", replayCounterL);

        FUNC2("key information = ", keyInfo);

        if ( keyInfo & ZM_BIT_3 )
        {
            FUNC0("    - pairwise key");
        }
        else
        {
            FUNC0("    - group key");
        }

        if ( keyInfo & ZM_BIT_6 )
        {
            FUNC0("    - Tx key installed");
        }
        else
        {
            FUNC0("    - Tx key not set");
        }

        if ( keyInfo & ZM_BIT_7 )
        {
            FUNC0("    - Ack needed");
        }
        else
        {
            FUNC0("    - Ack not needed");
        }

        if ( keyInfo & ZM_BIT_8 )
        {
            FUNC0("    - MIC set");
        }
        else
        {
            FUNC0("    - MIC not set");
        }

        if ( keyInfo & ZM_BIT_9 )
        {
            FUNC0("    - packet encrypted");
        }
        else
        {
            FUNC0("    - packet not encrypted");
        }

        FUNC1("keyLen = ", keyLen);
        FUNC1("keyDataLen = ", keyDataLen);
    }
    else if( packetType == 4 )
    {
        FUNC0("EAPOL-Encapsulated-ASF-Alert");
    }
}