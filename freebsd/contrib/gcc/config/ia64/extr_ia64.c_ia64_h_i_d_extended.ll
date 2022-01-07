; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_h_i_d_extended.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_h_i_d_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current_sched_info = common dso_local global %struct.TYPE_2__* null, align 8
@DO_SPECULATION = common dso_local global i32 0, align 4
@spec_check_no = common dso_local global i32* null, align 8
@max_uid = common dso_local global i32 0, align 4
@stops_p = common dso_local global i32* null, align 8
@clocks_length = common dso_local global i32 0, align 4
@ia64_tune = common dso_local global i64 0, align 8
@PROCESSOR_ITANIUM = common dso_local global i64 0, align 8
@clocks = common dso_local global i32* null, align 8
@add_cycles = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ia64_h_i_d_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_h_i_d_extended() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_sched_info, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @DO_SPECULATION, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %0
  %10 = call i32 (...) @get_max_uid()
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %1, align 4
  %12 = load i32*, i32** @spec_check_no, align 8
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @max_uid, align 4
  %15 = call i32* @xrecalloc(i32* %12, i32 %13, i32 %14, i32 4)
  store i32* %15, i32** @spec_check_no, align 8
  %16 = load i32, i32* %1, align 4
  store i32 %16, i32* @max_uid, align 4
  br label %17

17:                                               ; preds = %9, %0
  %18 = load i32*, i32** @stops_p, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = call i32 (...) @get_max_uid()
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  %23 = load i32*, i32** @stops_p, align 8
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @clocks_length, align 4
  %26 = call i32* @xrecalloc(i32* %23, i32 %24, i32 %25, i32 1)
  store i32* %26, i32** @stops_p, align 8
  %27 = load i64, i64* @ia64_tune, align 8
  %28 = load i64, i64* @PROCESSOR_ITANIUM, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load i32*, i32** @clocks, align 8
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @clocks_length, align 4
  %34 = call i32* @xrecalloc(i32* %31, i32 %32, i32 %33, i32 4)
  store i32* %34, i32** @clocks, align 8
  %35 = load i32*, i32** @add_cycles, align 8
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @clocks_length, align 4
  %38 = call i32* @xrecalloc(i32* %35, i32 %36, i32 %37, i32 4)
  store i32* %38, i32** @add_cycles, align 8
  br label %39

39:                                               ; preds = %30, %20
  %40 = load i32, i32* %2, align 4
  store i32 %40, i32* @clocks_length, align 4
  br label %41

41:                                               ; preds = %39, %17
  ret void
}

declare dso_local i32 @get_max_uid(...) #1

declare dso_local i32* @xrecalloc(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
