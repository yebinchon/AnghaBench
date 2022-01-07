; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_tx_timeout_tsklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_tx_timeout_tsklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_op = type { i64, i32, %struct.TYPE_2__, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bcm_msg_head = type { i32, i64, i64, i32, i32, i32, i32 }

@TX_COUNTEVT = common dso_local global i32 0, align 4
@TX_EXPIRED = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @bcm_tx_timeout_tsklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_tx_timeout_tsklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bcm_op*, align 8
  %4 = alloca %struct.bcm_msg_head, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.bcm_op*
  store %struct.bcm_op* %6, %struct.bcm_op** %3, align 8
  %7 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %8 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %1
  %13 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %14 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %12
  %18 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %19 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %23 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %17
  %27 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %28 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TX_COUNTEVT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %26
  %34 = load i32, i32* @TX_EXPIRED, align 4
  %35 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %4, i32 0, i32 6
  store i32 %34, i32* %35, align 4
  %36 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %37 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %4, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %41 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %4, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %45 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %4, i32 0, i32 5
  store i32 %46, i32* %47, align 8
  %48 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %49 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %4, i32 0, i32 4
  store i32 %50, i32* %51, align 4
  %52 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %53 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %4, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %4, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %58 = call i32 @bcm_send_to_user(%struct.bcm_op* %57, %struct.bcm_msg_head* %4, i32* null, i32 0)
  br label %59

59:                                               ; preds = %33, %26, %17
  br label %60

60:                                               ; preds = %59, %12, %1
  %61 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %62 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %68 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %73 = call i32 @bcm_can_tx(%struct.bcm_op* %72)
  %74 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %75 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %74, i32 0, i32 3
  %76 = call i32 (...) @ktime_get()
  %77 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %78 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @ktime_add(i32 %76, i64 %80)
  %82 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %83 = call i32 @hrtimer_start(i32* %75, i32 %81, i32 %82)
  br label %104

84:                                               ; preds = %66, %60
  %85 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %86 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %92 = call i32 @bcm_can_tx(%struct.bcm_op* %91)
  %93 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %94 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %93, i32 0, i32 3
  %95 = call i32 (...) @ktime_get()
  %96 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %97 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @ktime_add(i32 %95, i64 %99)
  %101 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %102 = call i32 @hrtimer_start(i32* %94, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %90, %84
  br label %104

104:                                              ; preds = %103, %71
  ret void
}

declare dso_local i32 @bcm_send_to_user(%struct.bcm_op*, %struct.bcm_msg_head*, i32*, i32) #1

declare dso_local i32 @bcm_can_tx(%struct.bcm_op*) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ktime_add(i32, i64) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
