; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_2d_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_2d_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PRI_RING_LENGTH = common dso_local global i32 0, align 4
@PRI_RING_TAIL = common dso_local global i32 0, align 4
@PRI_RING_HEAD = common dso_local global i32 0, align 4
@PRI_RING_START = common dso_local global i32 0, align 4
@RING_START_MASK = common dso_local global i32 0, align 4
@GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@RING_LENGTH_MASK = common dso_local global i32 0, align 4
@RING_NO_REPORT = common dso_local global i32 0, align 4
@RING_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intelfbhw_2d_start(%struct.intelfb_info* %0) #0 {
  %2 = alloca %struct.intelfb_info*, align 8
  store %struct.intelfb_info* %0, %struct.intelfb_info** %2, align 8
  %3 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %4 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %41

8:                                                ; preds = %1
  %9 = load i32, i32* @PRI_RING_LENGTH, align 4
  %10 = call i32 @OUTREG(i32 %9, i32 0)
  %11 = load i32, i32* @PRI_RING_TAIL, align 4
  %12 = call i32 @OUTREG(i32 %11, i32 0)
  %13 = load i32, i32* @PRI_RING_HEAD, align 4
  %14 = call i32 @OUTREG(i32 %13, i32 0)
  %15 = load i32, i32* @PRI_RING_START, align 4
  %16 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %17 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RING_START_MASK, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @OUTREG(i32 %15, i32 %21)
  %23 = load i32, i32* @PRI_RING_LENGTH, align 4
  %24 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %25 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GTT_PAGE_SIZE, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load i32, i32* @RING_LENGTH_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @RING_NO_REPORT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @RING_ENABLE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @OUTREG(i32 %23, i32 %35)
  %37 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %38 = call i32 @refresh_ring(%struct.intelfb_info* %37)
  %39 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %40 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @OUTREG(i32, i32) #1

declare dso_local i32 @refresh_ring(%struct.intelfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
