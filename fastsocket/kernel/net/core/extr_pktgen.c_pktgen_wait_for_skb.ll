; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_pktgen_wait_for_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_pktgen_wait_for_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktgen_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktgen_dev*)* @pktgen_wait_for_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pktgen_wait_for_skb(%struct.pktgen_dev* %0) #0 {
  %2 = alloca %struct.pktgen_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pktgen_dev* %0, %struct.pktgen_dev** %2, align 8
  %4 = call i32 (...) @ktime_now()
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @atomic_read(i32* %9)
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %26

12:                                               ; preds = %5
  %13 = load i32, i32* @current, align 4
  %14 = call i64 @signal_pending(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %26

17:                                               ; preds = %12
  %18 = call i64 (...) @need_resched()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %22 = call i32 @pktgen_resched(%struct.pktgen_dev* %21)
  br label %25

23:                                               ; preds = %17
  %24 = call i32 (...) @cpu_relax()
  br label %25

25:                                               ; preds = %23, %20
  br label %5

26:                                               ; preds = %16, %5
  %27 = call i32 (...) @ktime_now()
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @ktime_sub(i32 %27, i32 %28)
  %30 = call i64 @ktime_to_ns(i32 %29)
  %31 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %32 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 8
  ret void
}

declare dso_local i32 @ktime_now(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @pktgen_resched(%struct.pktgen_dev*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
