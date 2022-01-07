; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_make_array_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_make_array_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.type*, %struct.value*, i32*)* @make_array_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @make_array_descriptor(%struct.type* %0, %struct.value* %1, i32* %2) #0 {
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.value*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.type*, align 8
  %10 = alloca %struct.value*, align 8
  %11 = alloca %struct.value*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %5, align 8
  store %struct.value* %1, %struct.value** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.type*, %struct.type** %5, align 8
  %15 = call %struct.type* @desc_bounds_type(%struct.type* %14)
  store %struct.type* %15, %struct.type** %8, align 8
  %16 = load %struct.type*, %struct.type** %5, align 8
  %17 = call %struct.type* @desc_base_type(%struct.type* %16)
  store %struct.type* %17, %struct.type** %9, align 8
  %18 = load %struct.type*, %struct.type** %9, align 8
  %19 = call %struct.value* @allocate_value(%struct.type* %18)
  store %struct.value* %19, %struct.value** %10, align 8
  %20 = load %struct.type*, %struct.type** %8, align 8
  %21 = call %struct.value* @allocate_value(%struct.type* %20)
  store %struct.value* %21, %struct.value** %11, align 8
  %22 = load %struct.value*, %struct.value** %6, align 8
  %23 = call i32 @VALUE_TYPE(%struct.value* %22)
  %24 = call i32 @check_typedef(i32 %23)
  %25 = call i32 @ada_array_arity(i32 %24)
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %56, %3
  %27 = load i32, i32* %13, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load %struct.value*, %struct.value** %11, align 8
  %31 = call i32 @VALUE_CONTENTS(%struct.value* %30)
  %32 = load %struct.value*, %struct.value** %6, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @ada_array_bound(%struct.value* %32, i32 %33, i32 0)
  %35 = call %struct.value* @value_as_long(i32 %34)
  %36 = load %struct.type*, %struct.type** %8, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @desc_bound_bitpos(%struct.type* %36, i32 %37, i32 0)
  %39 = load %struct.type*, %struct.type** %8, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @desc_bound_bitsize(%struct.type* %39, i32 %40, i32 0)
  %42 = call i32 @modify_general_field(i32 %31, %struct.value* %35, i32 %38, i32 %41)
  %43 = load %struct.value*, %struct.value** %11, align 8
  %44 = call i32 @VALUE_CONTENTS(%struct.value* %43)
  %45 = load %struct.value*, %struct.value** %6, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @ada_array_bound(%struct.value* %45, i32 %46, i32 1)
  %48 = call %struct.value* @value_as_long(i32 %47)
  %49 = load %struct.type*, %struct.type** %8, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @desc_bound_bitpos(%struct.type* %49, i32 %50, i32 1)
  %52 = load %struct.type*, %struct.type** %8, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @desc_bound_bitsize(%struct.type* %52, i32 %53, i32 1)
  %55 = call i32 @modify_general_field(i32 %44, %struct.value* %48, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %29
  %57 = load i32, i32* %13, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %26

59:                                               ; preds = %26
  %60 = load %struct.value*, %struct.value** %11, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call %struct.value* @place_on_stack(%struct.value* %60, i32* %61)
  store %struct.value* %62, %struct.value** %11, align 8
  %63 = load %struct.value*, %struct.value** %10, align 8
  %64 = call i32 @VALUE_CONTENTS(%struct.value* %63)
  %65 = load %struct.value*, %struct.value** %6, align 8
  %66 = load %struct.type*, %struct.type** %9, align 8
  %67 = call i32 @fat_pntr_data_bitpos(%struct.type* %66)
  %68 = load %struct.type*, %struct.type** %9, align 8
  %69 = call i32 @fat_pntr_data_bitsize(%struct.type* %68)
  %70 = call i32 @modify_general_field(i32 %64, %struct.value* %65, i32 %67, i32 %69)
  %71 = load %struct.value*, %struct.value** %10, align 8
  %72 = call i32 @VALUE_CONTENTS(%struct.value* %71)
  %73 = load %struct.value*, %struct.value** %11, align 8
  %74 = call %struct.value* @VALUE_ADDRESS(%struct.value* %73)
  %75 = load %struct.type*, %struct.type** %9, align 8
  %76 = call i32 @fat_pntr_bounds_bitpos(%struct.type* %75)
  %77 = load %struct.type*, %struct.type** %9, align 8
  %78 = call i32 @fat_pntr_bounds_bitsize(%struct.type* %77)
  %79 = call i32 @modify_general_field(i32 %72, %struct.value* %74, i32 %76, i32 %78)
  %80 = load %struct.value*, %struct.value** %10, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call %struct.value* @place_on_stack(%struct.value* %80, i32* %81)
  store %struct.value* %82, %struct.value** %10, align 8
  %83 = load %struct.type*, %struct.type** %5, align 8
  %84 = call i64 @TYPE_CODE(%struct.type* %83)
  %85 = load i64, i64* @TYPE_CODE_PTR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %59
  %88 = load %struct.value*, %struct.value** %10, align 8
  %89 = call %struct.value* @value_addr(%struct.value* %88)
  store %struct.value* %89, %struct.value** %4, align 8
  br label %92

90:                                               ; preds = %59
  %91 = load %struct.value*, %struct.value** %10, align 8
  store %struct.value* %91, %struct.value** %4, align 8
  br label %92

92:                                               ; preds = %90, %87
  %93 = load %struct.value*, %struct.value** %4, align 8
  ret %struct.value* %93
}

declare dso_local %struct.type* @desc_bounds_type(%struct.type*) #1

declare dso_local %struct.type* @desc_base_type(%struct.type*) #1

declare dso_local %struct.value* @allocate_value(%struct.type*) #1

declare dso_local i32 @ada_array_arity(i32) #1

declare dso_local i32 @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @modify_general_field(i32, %struct.value*, i32, i32) #1

declare dso_local i32 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local %struct.value* @value_as_long(i32) #1

declare dso_local i32 @ada_array_bound(%struct.value*, i32, i32) #1

declare dso_local i32 @desc_bound_bitpos(%struct.type*, i32, i32) #1

declare dso_local i32 @desc_bound_bitsize(%struct.type*, i32, i32) #1

declare dso_local %struct.value* @place_on_stack(%struct.value*, i32*) #1

declare dso_local i32 @fat_pntr_data_bitpos(%struct.type*) #1

declare dso_local i32 @fat_pntr_data_bitsize(%struct.type*) #1

declare dso_local %struct.value* @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i32 @fat_pntr_bounds_bitpos(%struct.type*) #1

declare dso_local i32 @fat_pntr_bounds_bitsize(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.value* @value_addr(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
