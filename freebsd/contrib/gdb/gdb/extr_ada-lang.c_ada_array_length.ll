; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_array_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_array_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }

@builtin_type_ada_int = common dso_local global %struct.type* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @ada_array_length(%struct.value* %0, i32 %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.type*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca i64, align 8
  store %struct.value* %0, %struct.value** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.value*, %struct.value** %4, align 8
  %11 = call i32 @VALUE_TYPE(%struct.value* %10)
  %12 = call %struct.type* @check_typedef(i32 %11)
  store %struct.type* %12, %struct.type** %6, align 8
  %13 = load %struct.type*, %struct.type** %6, align 8
  %14 = call i64 @ada_is_packed_array_type(%struct.type* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.value*, %struct.value** %4, align 8
  %18 = call %struct.value* @decode_packed_array(%struct.value* %17)
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.value* @ada_array_length(%struct.value* %18, i32 %19)
  store %struct.value* %20, %struct.value** %3, align 8
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.type*, %struct.type** %6, align 8
  %23 = call i64 @ada_is_simple_array(%struct.type* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load %struct.type*, %struct.type** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @ada_array_bound_from_type(%struct.type* %26, i32 %27, i32 1, %struct.type** %8)
  %29 = load %struct.type*, %struct.type** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @ada_array_bound_from_type(%struct.type* %29, i32 %30, i32 0, %struct.type** null)
  %32 = sub nsw i64 %28, %31
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %9, align 8
  %34 = load %struct.type*, %struct.type** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call %struct.value* @value_from_longest(%struct.type* %34, i64 %35)
  store %struct.value* %36, %struct.value** %3, align 8
  br label %52

37:                                               ; preds = %21
  %38 = load %struct.type*, %struct.type** @builtin_type_ada_int, align 8
  %39 = load %struct.value*, %struct.value** %4, align 8
  %40 = call i32 @desc_bounds(%struct.value* %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @desc_one_bound(i32 %40, i32 %41, i32 1)
  %43 = call i64 @value_as_long(i32 %42)
  %44 = load %struct.value*, %struct.value** %4, align 8
  %45 = call i32 @desc_bounds(%struct.value* %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @desc_one_bound(i32 %45, i32 %46, i32 0)
  %48 = call i64 @value_as_long(i32 %47)
  %49 = sub nsw i64 %43, %48
  %50 = add nsw i64 %49, 1
  %51 = call %struct.value* @value_from_longest(%struct.type* %38, i64 %50)
  store %struct.value* %51, %struct.value** %3, align 8
  br label %52

52:                                               ; preds = %37, %25, %16
  %53 = load %struct.value*, %struct.value** %3, align 8
  ret %struct.value* %53
}

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @ada_is_packed_array_type(%struct.type*) #1

declare dso_local %struct.value* @decode_packed_array(%struct.value*) #1

declare dso_local i64 @ada_is_simple_array(%struct.type*) #1

declare dso_local i64 @ada_array_bound_from_type(%struct.type*, i32, i32, %struct.type**) #1

declare dso_local %struct.value* @value_from_longest(%struct.type*, i64) #1

declare dso_local i64 @value_as_long(i32) #1

declare dso_local i32 @desc_one_bound(i32, i32, i32) #1

declare dso_local i32 @desc_bounds(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
