
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu_config {int m_state; int last_status; int m_ptr; int* m_buf; int synthno; int m_left; int timer_flag; } ;


 int BUFTEST (struct mpu_config*) ;
 int MPU_ACK ;




 int ST_SONGSEL ;



 int TMR_CLOCK ;
 int TMR_CONTINUE ;
 int TMR_SPP ;
 int TMR_START ;
 int TMR_STOP ;
 int do_midi_msg (int ,unsigned char*,int) ;
 int * len_tab ;
 int mpu_timer_interrupt () ;
 int printk (char*,...) ;
 int timer_ext_event (struct mpu_config*,int ,int) ;

__attribute__((used)) static int mpu_input_scanner(struct mpu_config *devc, unsigned char midic)
{

 switch (devc->m_state)
 {
  case 133:
   switch (midic)
   {
    case 0xf8:

     break;

    case 0xfc:
     printk("<all end>");
      break;

    case 0xfd:
     if (devc->timer_flag)
      mpu_timer_interrupt();
     break;

    case 0xfe:
     return MPU_ACK;

    case 0xf0:
    case 0xf1:
    case 0xf2:
    case 0xf3:
    case 0xf4:
    case 0xf5:
    case 0xf6:
    case 0xf7:
     printk("<Trk data rq #%d>", midic & 0x0f);
     break;

    case 0xf9:
     printk("<conductor rq>");
     break;

    case 0xff:
     devc->m_state = 129;
     break;

    default:
     if (midic <= 0xef)
     {

      devc->m_state = 128;
     }
     else
      printk("<MPU: Unknown event %02x> ", midic);
   }
   break;

  case 128:
   {
    int msg = ((int) (midic & 0xf0) >> 4);

    devc->m_state = 134;

    if (msg < 8)
    {

     msg = ((int) (devc->last_status & 0xf0) >> 4);
     msg -= 8;
     devc->m_left = len_tab[msg] - 1;

     devc->m_ptr = 2;
     devc->m_buf[0] = devc->last_status;
     devc->m_buf[1] = midic;

     if (devc->m_left <= 0)
     {
      devc->m_state = 133;
      do_midi_msg(devc->synthno, devc->m_buf, devc->m_ptr);
      devc->m_ptr = 0;
     }
    }
    else if (msg == 0xf)
    {
     devc->m_state = 133;

     switch (midic)
     {
      case 0xf8:

       break;

      case 0xf9:

       break;

      case 0xfc:

       break;

      default:
       printk("Unknown MPU mark %02x\n", midic);
     }
    }
    else
    {
     devc->last_status = midic;

     msg -= 8;
     devc->m_left = len_tab[msg];

     devc->m_ptr = 1;
     devc->m_buf[0] = midic;

     if (devc->m_left <= 0)
     {
      devc->m_state = 133;
      do_midi_msg(devc->synthno, devc->m_buf, devc->m_ptr);
      devc->m_ptr = 0;
     }
    }
   }
   break;

  case 129:
   switch (midic)
   {
    case 0xf0:
     printk("<SYX>");
     devc->m_state = 130;
     break;

    case 0xf1:
     devc->m_state = 132;
     break;

    case 0xf2:
     devc->m_state = 131;
     devc->m_ptr = 0;
     break;

    case 0xf3:
     devc->m_state = ST_SONGSEL;
     break;

    case 0xf6:

     devc->m_state = 133;




    case 0xf8:

     devc->m_state = 133;
     timer_ext_event(devc, TMR_CLOCK, 0);
     break;

    case 0xfA:
     devc->m_state = 133;
     timer_ext_event(devc, TMR_START, 0);
     break;

    case 0xFB:
     devc->m_state = 133;
     timer_ext_event(devc, TMR_CONTINUE, 0);
     break;

    case 0xFC:
     devc->m_state = 133;
     timer_ext_event(devc, TMR_STOP, 0);
     break;

    case 0xFE:

     devc->m_state = 133;
     break;

    case 0xff:

     devc->m_state = 133;
     break;

    default:
     printk("unknown MIDI sysmsg %0x\n", midic);
     devc->m_state = 133;
   }
   break;

  case 132:
   devc->m_state = 133;
   printk("MTC frame %x02\n", midic);
   break;

  case 130:
   if (midic == 0xf7)
   {
    printk("<EOX>");
    devc->m_state = 133;
   }
   else
    printk("%02x ", midic);
   break;

  case 131:
   BUFTEST(devc);
   devc->m_buf[devc->m_ptr++] = midic;
   if (devc->m_ptr == 2)
   {
    devc->m_state = 133;
    devc->m_ptr = 0;
    timer_ext_event(devc, TMR_SPP,
     ((devc->m_buf[1] & 0x7f) << 7) |
     (devc->m_buf[0] & 0x7f));
   }
   break;

  case 134:
   BUFTEST(devc);
   devc->m_buf[devc->m_ptr++] = midic;
   if ((--devc->m_left) <= 0)
   {
    devc->m_state = 133;
    do_midi_msg(devc->synthno, devc->m_buf, devc->m_ptr);
    devc->m_ptr = 0;
   }
   break;

  default:
   printk("Bad state %d ", devc->m_state);
   devc->m_state = 133;
 }
 return 1;
}
