; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_array_arity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_array_arity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ada_array_arity(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  %5 = load %struct.type*, %struct.type** %3, align 8
  %6 = icmp eq %struct.type* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

8:                                                ; preds = %1
  %9 = load %struct.type*, %struct.type** %3, align 8
  %10 = call %struct.type* @desc_base_type(%struct.type* %9)
  store %struct.type* %10, %struct.type** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.type*, %struct.type** %3, align 8
  %12 = call i64 @TYPE_CODE(%struct.type* %11)
  %13 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load %struct.type*, %struct.type** %3, align 8
  %17 = call i32 @desc_bounds_type(%struct.type* %16)
  %18 = call i32 @desc_arity(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %25, %19
  %21 = load %struct.type*, %struct.type** %3, align 8
  %22 = call i64 @TYPE_CODE(%struct.type* %21)
  %23 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load %struct.type*, %struct.type** %3, align 8
  %29 = call i32 @TYPE_TARGET_TYPE(%struct.type* %28)
  %30 = call %struct.type* @check_typedef(i32 %29)
  store %struct.type* %30, %struct.type** %3, align 8
  br label %20

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %15, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.type* @desc_base_type(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @desc_arity(i32) #1

declare dso_local i32 @desc_bounds_type(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @TYPE_TARGET_TYPE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
