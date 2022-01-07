; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_timekeeping_forward_now.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_timekeeping_forward_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.clocksource* }
%struct.clocksource = type { i32 (%struct.clocksource*)*, i32, i32, i32, i32 }

@timekeeper = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @timekeeping_forward_now to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timekeeping_forward_now() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.clocksource*, align 8
  %4 = alloca i32, align 4
  %5 = load %struct.clocksource*, %struct.clocksource** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 4), align 8
  store %struct.clocksource* %5, %struct.clocksource** %3, align 8
  %6 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %7 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %6, i32 0, i32 0
  %8 = load i32 (%struct.clocksource*)*, i32 (%struct.clocksource*)** %7, align 8
  %9 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %10 = call i32 %8(%struct.clocksource* %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %13 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %11, %14
  %16 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %17 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %15, %18
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %22 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 3), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 2), align 8
  %26 = call i32 @clocksource_cyc2ns(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = call i64 (...) @arch_gettimeoffset()
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @timespec_add_ns(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 1), i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %36 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %39 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @clocksource_cyc2ns(i32 %34, i32 %37, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @timespec_add_ns(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 0), i32 %42)
  ret void
}

declare dso_local i32 @clocksource_cyc2ns(i32, i32, i32) #1

declare dso_local i64 @arch_gettimeoffset(...) #1

declare dso_local i32 @timespec_add_ns(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
