; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gcore.c_derive_stack_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gcore.c_derive_stack_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }

@target_has_stack = common dso_local global i32 0, align 4
@target_has_registers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*)* @derive_stack_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derive_stack_segment(i64* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.frame_info*, align 8
  %7 = alloca %struct.frame_info*, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = call i32 @gdb_assert(i64* %9)
  %11 = load i64*, i64** %5, align 8
  %12 = call i32 @gdb_assert(i64* %11)
  %13 = load i32, i32* @target_has_stack, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @target_has_registers, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %61

19:                                               ; preds = %15
  %20 = call %struct.frame_info* (...) @get_current_frame()
  store %struct.frame_info* %20, %struct.frame_info** %6, align 8
  %21 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %22 = icmp eq %struct.frame_info* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %61

24:                                               ; preds = %19
  %25 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %26 = call i64 @get_frame_base(%struct.frame_info* %25)
  %27 = load i64*, i64** %5, align 8
  store i64 %26, i64* %27, align 8
  %28 = call i64 (...) @read_sp()
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @INNER_THAN(i64 %28, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = call i64 (...) @read_sp()
  %35 = load i64*, i64** %5, align 8
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %24
  br label %37

37:                                               ; preds = %41, %36
  %38 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %39 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %38)
  store %struct.frame_info* %39, %struct.frame_info** %7, align 8
  %40 = icmp ne %struct.frame_info* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  store %struct.frame_info* %42, %struct.frame_info** %6, align 8
  br label %37

43:                                               ; preds = %37
  %44 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %45 = call i64 @get_frame_base(%struct.frame_info* %44)
  %46 = load i64*, i64** %4, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i64*, i64** %4, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %5, align 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load i64*, i64** %5, align 8
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %8, align 8
  %55 = load i64*, i64** %4, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %5, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64*, i64** %4, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %52, %43
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %23, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @gdb_assert(i64*) #1

declare dso_local %struct.frame_info* @get_current_frame(...) #1

declare dso_local i64 @get_frame_base(%struct.frame_info*) #1

declare dso_local i64 @INNER_THAN(i64, i64) #1

declare dso_local i64 @read_sp(...) #1

declare dso_local %struct.frame_info* @get_prev_frame(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
