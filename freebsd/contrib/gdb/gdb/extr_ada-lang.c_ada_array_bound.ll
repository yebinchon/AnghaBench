; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_array_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_array_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @ada_array_bound(%struct.value* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.type*, align 8
  %10 = alloca i32, align 4
  store %struct.value* %0, %struct.value** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.value*, %struct.value** %5, align 8
  %12 = call %struct.type* @VALUE_TYPE(%struct.value* %11)
  store %struct.type* %12, %struct.type** %8, align 8
  %13 = load %struct.type*, %struct.type** %8, align 8
  %14 = call i64 @ada_is_packed_array_type(%struct.type* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.value*, %struct.value** %5, align 8
  %18 = call %struct.value* @decode_packed_array(%struct.value* %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.value* @ada_array_bound(%struct.value* %18, i32 %19, i32 %20)
  store %struct.value* %21, %struct.value** %4, align 8
  br label %40

22:                                               ; preds = %3
  %23 = load %struct.type*, %struct.type** %8, align 8
  %24 = call i64 @ada_is_simple_array(%struct.type* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.type*, %struct.type** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ada_array_bound_from_type(%struct.type* %27, i32 %28, i32 %29, %struct.type** %9)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.type*, %struct.type** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.value* @value_from_longest(%struct.type* %31, i32 %32)
  store %struct.value* %33, %struct.value** %4, align 8
  br label %40

34:                                               ; preds = %22
  %35 = load %struct.value*, %struct.value** %5, align 8
  %36 = call i32 @desc_bounds(%struct.value* %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call %struct.value* @desc_one_bound(i32 %36, i32 %37, i32 %38)
  store %struct.value* %39, %struct.value** %4, align 8
  br label %40

40:                                               ; preds = %34, %26, %16
  %41 = load %struct.value*, %struct.value** %4, align 8
  ret %struct.value* %41
}

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @ada_is_packed_array_type(%struct.type*) #1

declare dso_local %struct.value* @decode_packed_array(%struct.value*) #1

declare dso_local i64 @ada_is_simple_array(%struct.type*) #1

declare dso_local i32 @ada_array_bound_from_type(%struct.type*, i32, i32, %struct.type**) #1

declare dso_local %struct.value* @value_from_longest(%struct.type*, i32) #1

declare dso_local %struct.value* @desc_one_bound(i32, i32, i32) #1

declare dso_local i32 @desc_bounds(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
