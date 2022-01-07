; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_set_type_range_case.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_set_type_range_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@range_mode = common dso_local global i64 0, align 8
@range_mode_auto = common dso_local global i64 0, align 8
@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@range_check = common dso_local global i32 0, align 4
@type_mode = common dso_local global i64 0, align 8
@type_mode_auto = common dso_local global i64 0, align 8
@type_check = common dso_local global i32 0, align 4
@case_mode = common dso_local global i64 0, align 8
@case_mode_auto = common dso_local global i64 0, align 8
@case_sensitivity = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_type_range_case to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_type_range_case() #0 {
  %1 = load i64, i64* @range_mode, align 8
  %2 = load i64, i64* @range_mode_auto, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* @range_check, align 4
  br label %8

8:                                                ; preds = %4, %0
  %9 = load i64, i64* @type_mode, align 8
  %10 = load i64, i64* @type_mode_auto, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* @type_check, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = load i64, i64* @case_mode, align 8
  %18 = load i64, i64* @case_mode_auto, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* @case_sensitivity, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = call i32 (...) @set_type_str()
  %26 = call i32 (...) @set_range_str()
  %27 = call i32 (...) @set_case_str()
  ret void
}

declare dso_local i32 @set_type_str(...) #1

declare dso_local i32 @set_range_str(...) #1

declare dso_local i32 @set_case_str(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
