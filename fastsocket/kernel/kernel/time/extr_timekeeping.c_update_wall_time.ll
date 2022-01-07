; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_update_wall_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_update_wall_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.clocksource* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.clocksource = type { i32 (%struct.clocksource*)*, i32, i32 }

@timekeeper = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@timekeeping_suspended = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_wall_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_wall_time() #0 {
  %1 = alloca %struct.clocksource*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @write_seqlock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 5), i64 %8)
  %10 = load i32, i32* @timekeeping_suspended, align 4
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %123

14:                                               ; preds = %0
  %15 = load %struct.clocksource*, %struct.clocksource** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 8), align 8
  store %struct.clocksource* %15, %struct.clocksource** %1, align 8
  %16 = load %struct.clocksource*, %struct.clocksource** %1, align 8
  %17 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %16, i32 0, i32 0
  %18 = load i32 (%struct.clocksource*)*, i32 (%struct.clocksource*)** %17, align 8
  %19 = load %struct.clocksource*, %struct.clocksource** %1, align 8
  %20 = call i32 %18(%struct.clocksource* %19)
  %21 = load %struct.clocksource*, %struct.clocksource** %1, align 8
  %22 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %20, %23
  %25 = load %struct.clocksource*, %struct.clocksource** %1, align 8
  %26 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  store i32 %28, i32* %2, align 4
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 7, i32 1), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 2), align 8
  %31 = shl i64 %29, %30
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 1), align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @ilog2(i32 %32)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 0), align 8
  %35 = call i32 @ilog2(i32 %34)
  %36 = sub nsw i32 %33, %35
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @max(i32 0, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = call i32 (...) @ntp_tick_length()
  %40 = call i32 @ilog2(i32 %39)
  %41 = add nsw i32 %40, 1
  %42 = sub nsw i32 64, %41
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @min(i32 %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %63, %14
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 0), align 8
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @logarithmic_accumulation(i32 %52, i32 %53)
  store i32 %54, i32* %2, align 4
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 0), align 8
  %57 = load i32, i32* %3, align 4
  %58 = shl i32 %56, %57
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %51
  br label %47

64:                                               ; preds = %47
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @timekeeping_adjust(i32 %65)
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 1), align 8
  %68 = icmp slt i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 1), align 8
  %74 = sub nsw i64 0, %73
  store i64 %74, i64* %6, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 1), align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 4), align 8
  %77 = shl i64 %75, %76
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 3), align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 3), align 8
  br label %80

80:                                               ; preds = %72, %64
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 1), align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 2), align 8
  %83 = ashr i64 %81, %82
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 7, i32 1), align 8
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 7, i32 1), align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 2), align 8
  %87 = shl i64 %85, %86
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 1), align 8
  %89 = sub nsw i64 %88, %87
  store i64 %89, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 1), align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 1), align 8
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 4), align 8
  %92 = shl i64 %90, %91
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 3), align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 3), align 8
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 7, i32 1), align 8
  %96 = load i64, i64* @NSEC_PER_SEC, align 8
  %97 = icmp sge i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %80
  %102 = load i64, i64* @NSEC_PER_SEC, align 8
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 7, i32 1), align 8
  %104 = sub nsw i64 %103, %102
  store i64 %104, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 7, i32 1), align 8
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 7, i32 0), align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 7, i32 0), align 8
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 7, i32 0), align 8
  %108 = call i32 @second_overflow(i64 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 7, i32 0), align 8
  %112 = add nsw i64 %111, %110
  store i64 %112, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 7, i32 0), align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 6, i32 0), align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 6, i32 0), align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %101
  %119 = call i32 (...) @clock_was_set_delayed()
  br label %120

120:                                              ; preds = %118, %101
  br label %121

121:                                              ; preds = %120, %80
  %122 = call i32 @timekeeping_update(i32 0)
  br label %123

123:                                              ; preds = %121, %13
  %124 = load i64, i64* %5, align 8
  %125 = call i32 @write_sequnlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @timekeeper, i32 0, i32 5), i64 %124)
  ret void
}

declare dso_local i32 @write_seqlock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ntp_tick_length(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @logarithmic_accumulation(i32, i32) #1

declare dso_local i32 @timekeeping_adjust(i32) #1

declare dso_local i32 @second_overflow(i64) #1

declare dso_local i32 @clock_was_set_delayed(...) #1

declare dso_local i32 @timekeeping_update(i32) #1

declare dso_local i32 @write_sequnlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
