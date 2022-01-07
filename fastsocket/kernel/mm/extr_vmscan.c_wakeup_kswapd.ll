; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_wakeup_kswapd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_wakeup_kswapd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wakeup_kswapd(%struct.zone* %0, i32 %1) #0 {
  %3 = alloca %struct.zone*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  store %struct.zone* %0, %struct.zone** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.zone*, %struct.zone** %3, align 8
  %7 = call i32 @populated_zone(%struct.zone* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %54

10:                                               ; preds = %2
  %11 = load %struct.zone*, %struct.zone** %3, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @cpuset_zone_allowed_hardwall(%struct.zone* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %54

16:                                               ; preds = %10
  %17 = load %struct.zone*, %struct.zone** %3, align 8
  %18 = getelementptr inbounds %struct.zone, %struct.zone* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %5, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %16
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i32 @waitqueue_active(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %54

35:                                               ; preds = %29
  %36 = load %struct.zone*, %struct.zone** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.zone*, %struct.zone** %3, align 8
  %39 = call i32 @low_wmark_pages(%struct.zone* %38)
  %40 = call i64 @zone_watermark_ok_safe(%struct.zone* %36, i32 %37, i32 %39, i32 0, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %54

43:                                               ; preds = %35
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.zone*, %struct.zone** %3, align 8
  %48 = call i32 @zone_idx(%struct.zone* %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @trace_mm_vmscan_wakeup_kswapd(i32 %46, i32 %48, i32 %49)
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = call i32 @wake_up_interruptible(i32* %52)
  br label %54

54:                                               ; preds = %43, %42, %34, %15, %9
  ret void
}

declare dso_local i32 @populated_zone(%struct.zone*) #1

declare dso_local i32 @cpuset_zone_allowed_hardwall(%struct.zone*, i32) #1

declare dso_local i32 @waitqueue_active(i32*) #1

declare dso_local i64 @zone_watermark_ok_safe(%struct.zone*, i32, i32, i32, i32) #1

declare dso_local i32 @low_wmark_pages(%struct.zone*) #1

declare dso_local i32 @trace_mm_vmscan_wakeup_kswapd(i32, i32, i32) #1

declare dso_local i32 @zone_idx(%struct.zone*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
