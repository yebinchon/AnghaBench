; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd.c_snd_msnd_wait_TXDE.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd.c_snd_msnd_wait_TXDE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_msnd = type { i32 }

@HP_ISR = common dso_local global i64 0, align 8
@HPISR_TXDE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_msnd*)* @snd_msnd_wait_TXDE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_msnd_wait_TXDE(%struct.snd_msnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_msnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_msnd* %0, %struct.snd_msnd** %3, align 8
  %6 = load %struct.snd_msnd*, %struct.snd_msnd** %3, align 8
  %7 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  store i32 1000, i32* %5, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %5, align 4
  %12 = icmp sgt i32 %10, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* @HP_ISR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @inb(i64 %17)
  %19 = load i32, i32* @HPISR_TXDE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %27

23:                                               ; preds = %13
  br label %9

24:                                               ; preds = %9
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
