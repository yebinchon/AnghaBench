; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_timekeeper_setup_internals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_timekeeper_setup_internals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.clocksource* }
%struct.clocksource = type { i32, i32, i32 (%struct.clocksource*)*, i32 }

@timekeeper = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NTP_INTERVAL_LENGTH = common dso_local global i32 0, align 4
@NTP_SCALE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clocksource*)* @timekeeper_setup_internals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timekeeper_setup_internals(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %6 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  store %struct.clocksource* %6, %struct.clocksource** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 9), align 8
  %7 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %8 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %7, i32 0, i32 2
  %9 = load i32 (%struct.clocksource*)*, i32 (%struct.clocksource*)** %8, align 8
  %10 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %11 = call i32 %9(%struct.clocksource* %10)
  %12 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %13 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @NTP_INTERVAL_LENGTH, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %16 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %22 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 2
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %29 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @do_div(i32 %27, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %1
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  store i64 %38, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 8), align 8
  %39 = load i64, i64* %3, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %42 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 0), align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 0), align 8
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 1), align 4
  %48 = load i64, i64* %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %51 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %55 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = ashr i32 %53, %56
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 7), align 8
  %58 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %59 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 3), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 6), align 8
  %61 = load i64, i64* @NTP_SCALE_SHIFT, align 8
  %62 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %63 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %61, %65
  store i64 %66, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 5), align 8
  %67 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %68 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 4), align 8
  ret void
}

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
