; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pas2_pcm.c_pas_audio_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pas2_pcm.c_pas_audio_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"pas2_pcm.c: static void pas_audio_close(void)\0A\00", align 1
@pas_lock = common dso_local global i32 0, align 4
@PAS_PCM_INTRBITS = common dso_local global i32 0, align 4
@PCM_NON = common dso_local global i32 0, align 4
@pcm_mode = common dso_local global i32 0, align 4
@pcm_busy = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pas_audio_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pas_audio_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @DEB(i32 %4)
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @pas_lock, i64 %6)
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @pas_audio_reset(i32 %8)
  %10 = load i32, i32* @PAS_PCM_INTRBITS, align 4
  %11 = call i32 @pas_remove_intr(i32 %10)
  %12 = load i32, i32* @PCM_NON, align 4
  store i32 %12, i32* @pcm_mode, align 4
  store i64 0, i64* @pcm_busy, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_unlock_irqrestore(i32* @pas_lock, i64 %13)
  ret void
}

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pas_audio_reset(i32) #1

declare dso_local i32 @pas_remove_intr(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
