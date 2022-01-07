; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_machzwd.c_zf_set_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_machzwd.c_zf_set_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COUNTER_1 = common dso_local global i32 0, align 4
@COUNTER_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i8)* @zf_set_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zf_set_timer(i16 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  store i16 %0, i16* %3, align 2
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  switch i32 %6, label %23 [
    i32 129, label %7
    i32 128, label %11
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @COUNTER_1, align 4
  %9 = load i16, i16* %3, align 2
  %10 = call i32 @zf_writew(i32 %8, i16 zeroext %9)
  br label %11

11:                                               ; preds = %2, %7
  %12 = load i32, i32* @COUNTER_2, align 4
  %13 = load i16, i16* %3, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp sgt i32 %14, 255
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %20

17:                                               ; preds = %11
  %18 = load i16, i16* %3, align 2
  %19 = zext i16 %18 to i32
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi i32 [ 255, %16 ], [ %19, %17 ]
  %22 = call i32 @zf_writeb(i32 %12, i32 %21)
  br label %23

23:                                               ; preds = %2, %20
  ret void
}

declare dso_local i32 @zf_writew(i32, i16 zeroext) #1

declare dso_local i32 @zf_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
