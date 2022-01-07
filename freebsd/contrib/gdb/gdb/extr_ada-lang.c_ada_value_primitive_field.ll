; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_value_primitive_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_value_primitive_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @ada_value_primitive_field(%struct.value* %0, i32 %1, i32 %2, %struct.type* %3) #0 {
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.type*, align 8
  %10 = alloca %struct.value*, align 8
  %11 = alloca %struct.type*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.value* %0, %struct.value** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.type* %3, %struct.type** %9, align 8
  %14 = load %struct.type*, %struct.type** %9, align 8
  %15 = call i32 @CHECK_TYPEDEF(%struct.type* %14)
  %16 = load %struct.type*, %struct.type** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %16, i32 %17)
  store %struct.type* %18, %struct.type** %11, align 8
  %19 = load %struct.type*, %struct.type** %9, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @TYPE_FIELD_BITSIZE(%struct.type* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %4
  %24 = load %struct.type*, %struct.type** %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.type*, %struct.type** %9, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @TYPE_FIELD_BITSIZE(%struct.type* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.value*, %struct.value** %6, align 8
  %31 = load %struct.value*, %struct.value** %6, align 8
  %32 = call i32 @VALUE_CONTENTS(%struct.value* %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %12, align 4
  %35 = sdiv i32 %34, 8
  %36 = add nsw i32 %33, %35
  %37 = load i32, i32* %12, align 4
  %38 = srem i32 %37, 8
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.type*, %struct.type** %11, align 8
  %41 = call %struct.value* @ada_value_primitive_packed_val(%struct.value* %30, i32 %32, i32 %36, i32 %38, i32 %39, %struct.type* %40)
  store %struct.value* %41, %struct.value** %5, align 8
  br label %48

42:                                               ; preds = %4
  %43 = load %struct.value*, %struct.value** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.type*, %struct.type** %9, align 8
  %47 = call %struct.value* @value_primitive_field(%struct.value* %43, i32 %44, i32 %45, %struct.type* %46)
  store %struct.value* %47, %struct.value** %5, align 8
  br label %48

48:                                               ; preds = %42, %23
  %49 = load %struct.value*, %struct.value** %5, align 8
  ret %struct.value* %49
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FIELD_BITSIZE(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local %struct.value* @ada_value_primitive_packed_val(%struct.value*, i32, i32, i32, i32, %struct.type*) #1

declare dso_local i32 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local %struct.value* @value_primitive_field(%struct.value*, i32, i32, %struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
