; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_reset_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_reset_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { i32 }

@FENCE_NUM = common dso_local global i32 0, align 4
@FENCE = common dso_local global i64 0, align 8
@PRI_RING_LENGTH = common dso_local global i64 0, align 8
@RING_ENABLE = common dso_local global i32 0, align 4
@PRI_RING_HEAD = common dso_local global i64 0, align 8
@PRI_RING_TAIL = common dso_local global i64 0, align 8
@PRI_RING_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intelfb_info*)* @reset_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_state(%struct.intelfb_info* %0) #0 {
  %2 = alloca %struct.intelfb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.intelfb_info* %0, %struct.intelfb_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @FENCE_NUM, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load i64, i64* @FENCE, align 8
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %10, %13
  %15 = call i32 @OUTREG(i64 %14, i32 0)
  br label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %5

19:                                               ; preds = %5
  %20 = load i64, i64* @PRI_RING_LENGTH, align 8
  %21 = call i32 @INREG(i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @RING_ENABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %28 = call i32 @refresh_ring(%struct.intelfb_info* %27)
  %29 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %30 = call i32 @intelfbhw_do_sync(%struct.intelfb_info* %29)
  %31 = call i32 (...) @DO_RING_IDLE()
  br label %32

32:                                               ; preds = %26, %19
  %33 = load i64, i64* @PRI_RING_LENGTH, align 8
  %34 = call i32 @OUTREG(i64 %33, i32 0)
  %35 = load i64, i64* @PRI_RING_HEAD, align 8
  %36 = call i32 @OUTREG(i64 %35, i32 0)
  %37 = load i64, i64* @PRI_RING_TAIL, align 8
  %38 = call i32 @OUTREG(i64 %37, i32 0)
  %39 = load i64, i64* @PRI_RING_START, align 8
  %40 = call i32 @OUTREG(i64 %39, i32 0)
  ret void
}

declare dso_local i32 @OUTREG(i64, i32) #1

declare dso_local i32 @INREG(i64) #1

declare dso_local i32 @refresh_ring(%struct.intelfb_info*) #1

declare dso_local i32 @intelfbhw_do_sync(%struct.intelfb_info*) #1

declare dso_local i32 @DO_RING_IDLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
