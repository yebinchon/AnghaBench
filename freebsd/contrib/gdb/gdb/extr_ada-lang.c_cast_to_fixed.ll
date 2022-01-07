; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_cast_to_fixed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_cast_to_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }

@builtin_type_double = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.type*, %struct.value*)* @cast_to_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @cast_to_fixed(%struct.type* %0, %struct.value* %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.value* %1, %struct.value** %5, align 8
  %8 = load %struct.type*, %struct.type** %4, align 8
  %9 = load %struct.value*, %struct.value** %5, align 8
  %10 = call %struct.type* @VALUE_TYPE(%struct.value* %9)
  %11 = icmp eq %struct.type* %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.value*, %struct.value** %5, align 8
  store %struct.value* %13, %struct.value** %3, align 8
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.value*, %struct.value** %5, align 8
  %16 = call %struct.type* @VALUE_TYPE(%struct.value* %15)
  %17 = call i64 @ada_is_fixed_point_type(%struct.type* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.type*, %struct.type** %4, align 8
  %21 = load %struct.value*, %struct.value** %5, align 8
  %22 = call %struct.type* @VALUE_TYPE(%struct.value* %21)
  %23 = load %struct.value*, %struct.value** %5, align 8
  %24 = call i32 @value_as_long(%struct.value* %23)
  %25 = call i32 @ada_fixed_to_float(%struct.type* %22, i32 %24)
  %26 = call i32 @ada_float_to_fixed(%struct.type* %20, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %36

27:                                               ; preds = %14
  %28 = load i32, i32* @builtin_type_double, align 4
  %29 = load %struct.value*, %struct.value** %5, align 8
  %30 = call i32 @value_copy(%struct.value* %29)
  %31 = call i32 @value_cast(i32 %28, i32 %30)
  %32 = call i32 @value_as_double(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.type*, %struct.type** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ada_float_to_fixed(%struct.type* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %27, %19
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.type*, %struct.type** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.value* @value_from_longest(%struct.type* %38, i32 %39)
  store %struct.value* %40, %struct.value** %3, align 8
  br label %41

41:                                               ; preds = %37, %12
  %42 = load %struct.value*, %struct.value** %3, align 8
  ret %struct.value* %42
}

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @ada_is_fixed_point_type(%struct.type*) #1

declare dso_local i32 @ada_float_to_fixed(%struct.type*, i32) #1

declare dso_local i32 @ada_fixed_to_float(%struct.type*, i32) #1

declare dso_local i32 @value_as_long(%struct.value*) #1

declare dso_local i32 @value_as_double(i32) #1

declare dso_local i32 @value_cast(i32, i32) #1

declare dso_local i32 @value_copy(%struct.value*) #1

declare dso_local %struct.value* @value_from_longest(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
