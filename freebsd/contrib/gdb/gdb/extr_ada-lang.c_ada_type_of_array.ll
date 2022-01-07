; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_type_of_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_type_of_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }
%struct.objfile = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @ada_type_of_array(%struct.value* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.value*, align 8
  %9 = alloca %struct.objfile*, align 8
  %10 = alloca %struct.type*, align 8
  %11 = alloca %struct.type*, align 8
  %12 = alloca %struct.value*, align 8
  %13 = alloca %struct.value*, align 8
  store %struct.value* %0, %struct.value** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.value*, %struct.value** %4, align 8
  %15 = call %struct.type* @VALUE_TYPE(%struct.value* %14)
  %16 = call i64 @ada_is_packed_array_type(%struct.type* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.value*, %struct.value** %4, align 8
  %20 = call %struct.type* @VALUE_TYPE(%struct.value* %19)
  %21 = call %struct.type* @decode_packed_array_type(%struct.type* %20)
  store %struct.type* %21, %struct.type** %3, align 8
  br label %99

22:                                               ; preds = %2
  %23 = load %struct.value*, %struct.value** %4, align 8
  %24 = call %struct.type* @VALUE_TYPE(%struct.value* %23)
  %25 = call i32 @ada_is_array_descriptor(%struct.type* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load %struct.value*, %struct.value** %4, align 8
  %29 = call %struct.type* @VALUE_TYPE(%struct.value* %28)
  store %struct.type* %29, %struct.type** %3, align 8
  br label %99

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load %struct.value*, %struct.value** %4, align 8
  %35 = call %struct.type* @VALUE_TYPE(%struct.value* %34)
  %36 = call i32 @desc_data_type(%struct.type* %35)
  %37 = call %struct.type* @TYPE_TARGET_TYPE(i32 %36)
  %38 = call %struct.type* @check_typedef(%struct.type* %37)
  store %struct.type* %38, %struct.type** %3, align 8
  br label %99

39:                                               ; preds = %30
  %40 = load %struct.value*, %struct.value** %4, align 8
  %41 = call %struct.type* @VALUE_TYPE(%struct.value* %40)
  %42 = call %struct.objfile* @TYPE_OBJFILE(%struct.type* %41)
  store %struct.objfile* %42, %struct.objfile** %9, align 8
  %43 = load %struct.value*, %struct.value** %4, align 8
  %44 = call %struct.type* @VALUE_TYPE(%struct.value* %43)
  %45 = call %struct.type* @ada_array_element_type(%struct.type* %44, i32 -1)
  store %struct.type* %45, %struct.type** %6, align 8
  %46 = load %struct.value*, %struct.value** %4, align 8
  %47 = call %struct.type* @VALUE_TYPE(%struct.value* %46)
  %48 = call i32 @ada_array_arity(%struct.type* %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.type*, %struct.type** %6, align 8
  %50 = icmp eq %struct.type* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51, %39
  %55 = load %struct.value*, %struct.value** %4, align 8
  %56 = call %struct.type* @VALUE_TYPE(%struct.value* %55)
  %57 = call %struct.type* @check_typedef(%struct.type* %56)
  store %struct.type* %57, %struct.type** %3, align 8
  br label %99

58:                                               ; preds = %51
  %59 = load %struct.value*, %struct.value** %4, align 8
  %60 = call %struct.value* @desc_bounds(%struct.value* %59)
  store %struct.value* %60, %struct.value** %8, align 8
  %61 = load %struct.value*, %struct.value** %8, align 8
  %62 = call i64 @value_as_long(%struct.value* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store %struct.type* null, %struct.type** %3, align 8
  br label %99

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %69, %65
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %66
  %70 = load %struct.objfile*, %struct.objfile** %9, align 8
  %71 = call %struct.type* @alloc_type(%struct.objfile* %70)
  store %struct.type* %71, %struct.type** %10, align 8
  %72 = load %struct.objfile*, %struct.objfile** %9, align 8
  %73 = call %struct.type* @alloc_type(%struct.objfile* %72)
  store %struct.type* %73, %struct.type** %11, align 8
  %74 = load %struct.value*, %struct.value** %8, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call %struct.value* @desc_one_bound(%struct.value* %74, i32 %75, i32 0)
  store %struct.value* %76, %struct.value** %12, align 8
  %77 = load %struct.value*, %struct.value** %8, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call %struct.value* @desc_one_bound(%struct.value* %77, i32 %78, i32 1)
  store %struct.value* %79, %struct.value** %13, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  %82 = load %struct.type*, %struct.type** %10, align 8
  %83 = load %struct.value*, %struct.value** %12, align 8
  %84 = call %struct.type* @VALUE_TYPE(%struct.value* %83)
  %85 = load %struct.value*, %struct.value** %12, align 8
  %86 = call i64 @value_as_long(%struct.value* %85)
  %87 = trunc i64 %86 to i32
  %88 = load %struct.value*, %struct.value** %13, align 8
  %89 = call i64 @value_as_long(%struct.value* %88)
  %90 = trunc i64 %89 to i32
  %91 = call i32 @create_range_type(%struct.type* %82, %struct.type* %84, i32 %87, i32 %90)
  %92 = load %struct.type*, %struct.type** %11, align 8
  %93 = load %struct.type*, %struct.type** %6, align 8
  %94 = load %struct.type*, %struct.type** %10, align 8
  %95 = call %struct.type* @create_array_type(%struct.type* %92, %struct.type* %93, %struct.type* %94)
  store %struct.type* %95, %struct.type** %6, align 8
  br label %66

96:                                               ; preds = %66
  %97 = load %struct.type*, %struct.type** %6, align 8
  %98 = call %struct.type* @lookup_pointer_type(%struct.type* %97)
  store %struct.type* %98, %struct.type** %3, align 8
  br label %99

99:                                               ; preds = %96, %64, %54, %33, %27, %18
  %100 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %100
}

declare dso_local i64 @ada_is_packed_array_type(%struct.type*) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local %struct.type* @decode_packed_array_type(%struct.type*) #1

declare dso_local i32 @ada_is_array_descriptor(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(i32) #1

declare dso_local i32 @desc_data_type(%struct.type*) #1

declare dso_local %struct.objfile* @TYPE_OBJFILE(%struct.type*) #1

declare dso_local %struct.type* @ada_array_element_type(%struct.type*, i32) #1

declare dso_local i32 @ada_array_arity(%struct.type*) #1

declare dso_local %struct.value* @desc_bounds(%struct.value*) #1

declare dso_local i64 @value_as_long(%struct.value*) #1

declare dso_local %struct.type* @alloc_type(%struct.objfile*) #1

declare dso_local %struct.value* @desc_one_bound(%struct.value*, i32, i32) #1

declare dso_local i32 @create_range_type(%struct.type*, %struct.type*, i32, i32) #1

declare dso_local %struct.type* @create_array_type(%struct.type*, %struct.type*, %struct.type*) #1

declare dso_local %struct.type* @lookup_pointer_type(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
