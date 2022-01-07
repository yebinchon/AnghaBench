
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dump_to_midi (unsigned char) ;
 int pas_lock ;
 size_t qhead ;
 int qlen ;
 size_t qtail ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned char* tmp_queue ;

__attribute__((used)) static int pas_midi_out(int dev, unsigned char midi_byte)
{

 unsigned long flags;





 spin_lock_irqsave(&pas_lock, flags);

 while (qlen && dump_to_midi(tmp_queue[qhead]))
 {
  qlen--;
  qhead++;
 }

 spin_unlock_irqrestore(&pas_lock, flags);





 if (!qlen)
  if (dump_to_midi(midi_byte))
   return 1;





 if (qlen >= 256)
  return 0;

 spin_lock_irqsave(&pas_lock, flags);

 tmp_queue[qtail] = midi_byte;
 qlen++;
 qtail++;

 spin_unlock_irqrestore(&pas_lock, flags);

 return 1;
}
