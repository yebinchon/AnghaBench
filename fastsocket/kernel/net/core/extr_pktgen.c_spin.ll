; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_spin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_spin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktgen_dev = type { i32, i8*, i32, i64 }
%struct.hrtimer_sleeper = type { i32, i32* }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktgen_dev*, i32)* @spin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spin(%struct.pktgen_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pktgen_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.hrtimer_sleeper, align 8
  store %struct.pktgen_dev* %0, %struct.pktgen_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 0
  %10 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %11 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %12 = call i32 @hrtimer_init_on_stack(i32* %9, i32 %10, i32 %11)
  %13 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 0
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @hrtimer_set_expires(i32* %13, i32 %14)
  %16 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 0
  %17 = call i32 @hrtimer_expires_remaining(i32* %16)
  %18 = call i64 @ktime_to_us(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %24 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @ktime_add_ns(i32 %22, i32 %25)
  %27 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %28 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  br label %98

29:                                               ; preds = %2
  %30 = call i32 (...) @ktime_now()
  store i32 %30, i32* %5, align 4
  %31 = load i64, i64* %7, align 8
  %32 = icmp slt i64 %31, 100
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @udelay(i64 %34)
  br label %79

36:                                               ; preds = %29
  %37 = load i32, i32* @current, align 4
  %38 = call i32 @hrtimer_init_sleeper(%struct.hrtimer_sleeper* %8, i32 %37)
  br label %39

39:                                               ; preds = %74, %36
  %40 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %41 = call i32 @set_current_state(i32 %40)
  %42 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 0
  %43 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %44 = call i32 @hrtimer_start_expires(i32* %42, i32 %43)
  %45 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 0
  %46 = call i32 @hrtimer_active(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 1
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %48, %39
  %51 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @likely(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 (...) @schedule()
  br label %57

57:                                               ; preds = %55, %50
  %58 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 0
  %59 = call i32 @hrtimer_cancel(i32* %58)
  br label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %66 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32, i32* @current, align 4
  %71 = call i32 @signal_pending(i32 %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %69, %64, %60
  %75 = phi i1 [ false, %64 ], [ false, %60 ], [ %73, %69 ]
  br i1 %75, label %39, label %76

76:                                               ; preds = %74
  %77 = load i32, i32* @TASK_RUNNING, align 4
  %78 = call i32 @__set_current_state(i32 %77)
  br label %79

79:                                               ; preds = %76, %33
  %80 = call i32 (...) @ktime_now()
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @ktime_sub(i32 %81, i32 %82)
  %84 = call i64 @ktime_to_ns(i32 %83)
  %85 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %86 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %93 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @ktime_add_ns(i32 %91, i32 %94)
  %96 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %97 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %79, %21
  ret void
}

declare dso_local i32 @hrtimer_init_on_stack(i32*, i32, i32) #1

declare dso_local i32 @hrtimer_set_expires(i32*, i32) #1

declare dso_local i64 @ktime_to_us(i32) #1

declare dso_local i32 @hrtimer_expires_remaining(i32*) #1

declare dso_local i8* @ktime_add_ns(i32, i32) #1

declare dso_local i32 @ktime_now(...) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @hrtimer_init_sleeper(%struct.hrtimer_sleeper*, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @hrtimer_start_expires(i32*, i32) #1

declare dso_local i32 @hrtimer_active(i32*) #1

declare dso_local i64 @likely(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
