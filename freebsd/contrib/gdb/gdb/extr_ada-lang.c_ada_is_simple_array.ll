; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_simple_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_simple_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@TYPE_CODE_PTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ada_is_simple_array(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %4 = load %struct.type*, %struct.type** %3, align 8
  %5 = icmp eq %struct.type* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

7:                                                ; preds = %1
  %8 = load %struct.type*, %struct.type** %3, align 8
  %9 = call i32 @CHECK_TYPEDEF(%struct.type* %8)
  %10 = load %struct.type*, %struct.type** %3, align 8
  %11 = call i64 @TYPE_CODE(%struct.type* %10)
  %12 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %27, label %14

14:                                               ; preds = %7
  %15 = load %struct.type*, %struct.type** %3, align 8
  %16 = call i64 @TYPE_CODE(%struct.type* %15)
  %17 = load i64, i64* @TYPE_CODE_PTR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.type*, %struct.type** %3, align 8
  %21 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %20)
  %22 = call i64 @TYPE_CODE(%struct.type* %21)
  %23 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %19, %14
  %26 = phi i1 [ false, %14 ], [ %24, %19 ]
  br label %27

27:                                               ; preds = %25, %7
  %28 = phi i1 [ true, %7 ], [ %26, %25 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %6
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
