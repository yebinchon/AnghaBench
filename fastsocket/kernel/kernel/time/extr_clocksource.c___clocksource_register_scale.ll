; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_clocksource.c___clocksource_register_scale.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_clocksource.c___clocksource_register_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32, i32, i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@MAX_UPDATE_LENGTH = common dso_local global i32 0, align 4
@clocksource_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__clocksource_register_scale(%struct.clocksource* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.clocksource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clocksource* %0, %struct.clocksource** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %8 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %7, i32 0, i32 0
  %9 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %10 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %9, i32 0, i32 3
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @NSEC_PER_SEC, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %12, %13
  %15 = load i32, i32* @MAX_UPDATE_LENGTH, align 4
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %15, %16
  %18 = call i32 @clocks_calc_mult_shift(i32* %8, i32* %10, i32 %11, i32 %14, i32 %17)
  %19 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %20 = call i8* @clocksource_max_adjustment(%struct.clocksource* %19)
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %23 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %50, %3
  %25 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %26 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %29 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %33 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %24
  %37 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %38 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %41 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  %44 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %45 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %43, %46
  br label %48

48:                                               ; preds = %36, %24
  %49 = phi i1 [ true, %24 ], [ %47, %36 ]
  br i1 %49, label %50, label %64

50:                                               ; preds = %48
  %51 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %52 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %56 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %60 = call i8* @clocksource_max_adjustment(%struct.clocksource* %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %63 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %24

64:                                               ; preds = %48
  %65 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %66 = call i32 @clocksource_max_deferment(%struct.clocksource* %65)
  %67 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %68 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = call i32 @mutex_lock(i32* @clocksource_mutex)
  %70 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %71 = call i32 @clocksource_enqueue(%struct.clocksource* %70)
  %72 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %73 = call i32 @clocksource_enqueue_watchdog(%struct.clocksource* %72)
  %74 = call i32 (...) @clocksource_select()
  %75 = call i32 @mutex_unlock(i32* @clocksource_mutex)
  ret i32 0
}

declare dso_local i32 @clocks_calc_mult_shift(i32*, i32*, i32, i32, i32) #1

declare dso_local i8* @clocksource_max_adjustment(%struct.clocksource*) #1

declare dso_local i32 @clocksource_max_deferment(%struct.clocksource*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clocksource_enqueue(%struct.clocksource*) #1

declare dso_local i32 @clocksource_enqueue_watchdog(%struct.clocksource*) #1

declare dso_local i32 @clocksource_select(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
