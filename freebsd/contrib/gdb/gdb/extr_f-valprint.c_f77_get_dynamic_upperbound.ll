; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-valprint.c_f77_get_dynamic_upperbound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-valprint.c_f77_get_dynamic_upperbound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@deprecated_selected_frame = common dso_local global i32 0, align 4
@DEFAULT_UPPER_BOUND = common dso_local global i32 0, align 4
@BOUND_FETCH_ERROR = common dso_local global i32 0, align 4
@builtin_type_void_data_ptr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"??? unhandled dynamic array bound type ???\00", align 1
@BOUND_FETCH_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f77_get_dynamic_upperbound(%struct.type* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.type*, %struct.type** %4, align 8
  %9 = call i32 @TYPE_ARRAY_UPPER_BOUND_TYPE(%struct.type* %8)
  switch i32 %9, label %56 [
    i32 130, label %10
    i32 128, label %27
    i32 129, label %31
    i32 132, label %35
    i32 133, label %55
    i32 131, label %55
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @deprecated_selected_frame, align 4
  %12 = call i32 @get_frame_base(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.type*, %struct.type** %4, align 8
  %18 = call i32 @TYPE_ARRAY_UPPER_BOUND_VALUE(%struct.type* %17)
  %19 = add nsw i32 %16, %18
  %20 = call i32 @read_memory_integer(i32 %19, i32 4)
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  br label %26

22:                                               ; preds = %10
  %23 = load i32, i32* @DEFAULT_UPPER_BOUND, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @BOUND_FETCH_ERROR, align 4
  store i32 %25, i32* %3, align 4
  br label %60

26:                                               ; preds = %15
  br label %58

27:                                               ; preds = %2
  %28 = load %struct.type*, %struct.type** %4, align 8
  %29 = call i32 @TYPE_ARRAY_UPPER_BOUND_VALUE(%struct.type* %28)
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %58

31:                                               ; preds = %2
  %32 = load %struct.type*, %struct.type** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @f77_get_dynamic_lowerbound(%struct.type* %32, i32* %33)
  br label %58

35:                                               ; preds = %2
  %36 = load i32, i32* @deprecated_selected_frame, align 4
  %37 = call i32 @get_frame_base(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.type*, %struct.type** %4, align 8
  %43 = call i32 @TYPE_ARRAY_UPPER_BOUND_VALUE(%struct.type* %42)
  %44 = add nsw i32 %41, %43
  %45 = load i32, i32* @builtin_type_void_data_ptr, align 4
  %46 = call i32 @read_memory_typed_address(i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @read_memory_integer(i32 %47, i32 4)
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  br label %54

50:                                               ; preds = %35
  %51 = load i32, i32* @DEFAULT_UPPER_BOUND, align 4
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @BOUND_FETCH_ERROR, align 4
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %40
  br label %58

55:                                               ; preds = %2, %2
  br label %56

56:                                               ; preds = %2, %55
  %57 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %54, %31, %27, %26
  %59 = load i32, i32* @BOUND_FETCH_OK, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %50, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @TYPE_ARRAY_UPPER_BOUND_TYPE(%struct.type*) #1

declare dso_local i32 @get_frame_base(i32) #1

declare dso_local i32 @read_memory_integer(i32, i32) #1

declare dso_local i32 @TYPE_ARRAY_UPPER_BOUND_VALUE(%struct.type*) #1

declare dso_local i32 @f77_get_dynamic_lowerbound(%struct.type*, i32*) #1

declare dso_local i32 @read_memory_typed_address(i32, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
