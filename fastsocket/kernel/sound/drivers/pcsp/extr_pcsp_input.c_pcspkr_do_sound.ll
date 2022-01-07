; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/pcsp/extr_pcsp_input.c_pcspkr_do_sound.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/pcsp/extr_pcsp_input.c_pcspkr_do_sound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i8253_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pcspkr_do_sound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcspkr_do_sound(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @i8253_lock, i64 %4)
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = call i32 @outb_p(i32 182, i32 67)
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 255
  %12 = call i32 @outb_p(i32 %11, i32 66)
  %13 = load i32, i32* %2, align 4
  %14 = lshr i32 %13, 8
  %15 = and i32 %14, 255
  %16 = call i32 @outb(i32 %15, i32 66)
  %17 = call i32 @inb_p(i32 97)
  %18 = or i32 %17, 3
  %19 = call i32 @outb_p(i32 %18, i32 97)
  br label %24

20:                                               ; preds = %1
  %21 = call i32 @inb_p(i32 97)
  %22 = and i32 %21, 252
  %23 = call i32 @outb(i32 %22, i32 97)
  br label %24

24:                                               ; preds = %20, %8
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* @i8253_lock, i64 %25)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
