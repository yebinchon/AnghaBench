; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_array_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_array_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ada_is_array_descriptor(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %5 = load %struct.type*, %struct.type** %3, align 8
  %6 = call %struct.type* @desc_data_type(%struct.type* %5)
  store %struct.type* %6, %struct.type** %4, align 8
  %7 = load %struct.type*, %struct.type** %3, align 8
  %8 = icmp eq %struct.type* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

10:                                               ; preds = %1
  %11 = load %struct.type*, %struct.type** %3, align 8
  %12 = call i32 @CHECK_TYPEDEF(%struct.type* %11)
  %13 = load %struct.type*, %struct.type** %4, align 8
  %14 = icmp ne %struct.type* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %10
  %16 = load %struct.type*, %struct.type** %4, align 8
  %17 = call i64 @TYPE_CODE(%struct.type* %16)
  %18 = load i64, i64* @TYPE_CODE_PTR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.type*, %struct.type** %4, align 8
  %22 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %21)
  %23 = icmp ne %struct.type* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.type*, %struct.type** %4, align 8
  %26 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %25)
  %27 = call i64 @TYPE_CODE(%struct.type* %26)
  %28 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %24, %20, %15
  %31 = load %struct.type*, %struct.type** %4, align 8
  %32 = call i64 @TYPE_CODE(%struct.type* %31)
  %33 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30, %24
  %36 = load %struct.type*, %struct.type** %3, align 8
  %37 = call i32 @desc_bounds_type(%struct.type* %36)
  %38 = call i64 @desc_arity(i32 %37)
  %39 = icmp sgt i64 %38, 0
  br label %40

40:                                               ; preds = %35, %30, %10
  %41 = phi i1 [ false, %30 ], [ false, %10 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %9
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.type* @desc_data_type(%struct.type*) #1

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i64 @desc_arity(i32) #1

declare dso_local i32 @desc_bounds_type(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
