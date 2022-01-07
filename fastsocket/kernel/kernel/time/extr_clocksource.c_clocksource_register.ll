; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_clocksource.c_clocksource_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_clocksource.c_clocksource_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Clocksource %s might overflow on 11%% adjustment\0A\00", align 1
@clocksource_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"kvm-clock\00", align 1
@has_kvm_clock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clocksource_register(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %3 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %4 = call i64 @clocksource_max_adjustment(%struct.clocksource* %3)
  %5 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %6 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %5, i32 0, i32 0
  store i64 %4, i64* %6, align 8
  %7 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %8 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %11 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %15 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %20 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @WARN_ONCE(i32 %18, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %24 = call i32 @clocksource_max_deferment(%struct.clocksource* %23)
  %25 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %26 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = call i32 @mutex_lock(i32* @clocksource_mutex)
  %28 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %29 = call i32 @clocksource_enqueue(%struct.clocksource* %28)
  %30 = call i32 (...) @clocksource_select()
  %31 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %32 = call i32 @clocksource_enqueue_watchdog(%struct.clocksource* %31)
  %33 = call i32 @mutex_unlock(i32* @clocksource_mutex)
  %34 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %35 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @strcmp(i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  store i32 1, i32* @has_kvm_clock, align 4
  br label %40

40:                                               ; preds = %39, %1
  ret i32 0
}

declare dso_local i64 @clocksource_max_adjustment(%struct.clocksource*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @clocksource_max_deferment(%struct.clocksource*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clocksource_enqueue(%struct.clocksource*) #1

declare dso_local i32 @clocksource_select(...) #1

declare dso_local i32 @clocksource_enqueue_watchdog(%struct.clocksource*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
