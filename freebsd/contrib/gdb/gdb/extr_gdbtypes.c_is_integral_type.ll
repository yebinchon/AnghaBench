; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_is_integral_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_is_integral_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_INT = common dso_local global i64 0, align 8
@TYPE_CODE_ENUM = common dso_local global i64 0, align 8
@TYPE_CODE_CHAR = common dso_local global i64 0, align 8
@TYPE_CODE_RANGE = common dso_local global i64 0, align 8
@TYPE_CODE_BOOL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_integral_type(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %2, align 8
  %3 = load %struct.type*, %struct.type** %2, align 8
  %4 = call i32 @CHECK_TYPEDEF(%struct.type* %3)
  %5 = load %struct.type*, %struct.type** %2, align 8
  %6 = icmp ne %struct.type* %5, null
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = load %struct.type*, %struct.type** %2, align 8
  %9 = call i64 @TYPE_CODE(%struct.type* %8)
  %10 = load i64, i64* @TYPE_CODE_INT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %32, label %12

12:                                               ; preds = %7
  %13 = load %struct.type*, %struct.type** %2, align 8
  %14 = call i64 @TYPE_CODE(%struct.type* %13)
  %15 = load i64, i64* @TYPE_CODE_ENUM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %32, label %17

17:                                               ; preds = %12
  %18 = load %struct.type*, %struct.type** %2, align 8
  %19 = call i64 @TYPE_CODE(%struct.type* %18)
  %20 = load i64, i64* @TYPE_CODE_CHAR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load %struct.type*, %struct.type** %2, align 8
  %24 = call i64 @TYPE_CODE(%struct.type* %23)
  %25 = load i64, i64* @TYPE_CODE_RANGE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.type*, %struct.type** %2, align 8
  %29 = call i64 @TYPE_CODE(%struct.type* %28)
  %30 = load i64, i64* @TYPE_CODE_BOOL, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %27, %22, %17, %12, %7
  %33 = phi i1 [ true, %22 ], [ true, %17 ], [ true, %12 ], [ true, %7 ], [ %31, %27 ]
  br label %34

34:                                               ; preds = %32, %1
  %35 = phi i1 [ false, %1 ], [ %33, %32 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
