; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_convert_actual.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_convert_actual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@lval_memory = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.value*, %struct.type*, i32*)* @convert_actual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @convert_actual(%struct.value* %0, %struct.type* %1, i32* %2) #0 {
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.type*, align 8
  %10 = alloca %struct.type*, align 8
  %11 = alloca %struct.type*, align 8
  %12 = alloca %struct.value*, align 8
  store %struct.value* %0, %struct.value** %5, align 8
  store %struct.type* %1, %struct.type** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.value*, %struct.value** %5, align 8
  %14 = call %struct.type* @VALUE_TYPE(%struct.value* %13)
  %15 = call %struct.type* @check_typedef(%struct.type* %14)
  store %struct.type* %15, %struct.type** %8, align 8
  %16 = load %struct.type*, %struct.type** %6, align 8
  %17 = call %struct.type* @check_typedef(%struct.type* %16)
  store %struct.type* %17, %struct.type** %9, align 8
  %18 = load %struct.type*, %struct.type** %9, align 8
  %19 = call i64 @TYPE_CODE(%struct.type* %18)
  %20 = load i64, i64* @TYPE_CODE_PTR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.type*, %struct.type** %9, align 8
  %24 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %23)
  %25 = call %struct.type* @check_typedef(%struct.type* %24)
  br label %28

26:                                               ; preds = %3
  %27 = load %struct.type*, %struct.type** %9, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi %struct.type* [ %25, %22 ], [ %27, %26 ]
  store %struct.type* %29, %struct.type** %10, align 8
  %30 = load %struct.type*, %struct.type** %8, align 8
  %31 = call i64 @TYPE_CODE(%struct.type* %30)
  %32 = load i64, i64* @TYPE_CODE_PTR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.type*, %struct.type** %8, align 8
  %36 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %35)
  %37 = call %struct.type* @check_typedef(%struct.type* %36)
  br label %40

38:                                               ; preds = %28
  %39 = load %struct.type*, %struct.type** %8, align 8
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi %struct.type* [ %37, %34 ], [ %39, %38 ]
  store %struct.type* %41, %struct.type** %11, align 8
  %42 = load %struct.type*, %struct.type** %10, align 8
  %43 = call i64 @ada_is_array_descriptor(%struct.type* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.type*, %struct.type** %11, align 8
  %47 = call i64 @TYPE_CODE(%struct.type* %46)
  %48 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.type*, %struct.type** %9, align 8
  %52 = load %struct.value*, %struct.value** %5, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call %struct.value* @make_array_descriptor(%struct.type* %51, %struct.value* %52, i32* %53)
  store %struct.value* %54, %struct.value** %4, align 8
  br label %117

55:                                               ; preds = %45, %40
  %56 = load %struct.type*, %struct.type** %9, align 8
  %57 = call i64 @TYPE_CODE(%struct.type* %56)
  %58 = load i64, i64* @TYPE_CODE_PTR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %105

60:                                               ; preds = %55
  %61 = load %struct.type*, %struct.type** %10, align 8
  %62 = call i64 @TYPE_CODE(%struct.type* %61)
  %63 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.type*, %struct.type** %11, align 8
  %67 = call i64 @ada_is_array_descriptor(%struct.type* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.value*, %struct.value** %5, align 8
  %71 = call %struct.value* @desc_data(%struct.value* %70)
  store %struct.value* %71, %struct.value** %4, align 8
  br label %117

72:                                               ; preds = %65, %60
  %73 = load %struct.type*, %struct.type** %8, align 8
  %74 = call i64 @TYPE_CODE(%struct.type* %73)
  %75 = load i64, i64* @TYPE_CODE_PTR, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %103

77:                                               ; preds = %72
  %78 = load %struct.value*, %struct.value** %5, align 8
  %79 = call i64 @VALUE_LVAL(%struct.value* %78)
  %80 = load i64, i64* @lval_memory, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %77
  %83 = load %struct.value*, %struct.value** %5, align 8
  %84 = call %struct.type* @VALUE_TYPE(%struct.value* %83)
  %85 = call %struct.type* @check_typedef(%struct.type* %84)
  store %struct.type* %85, %struct.type** %8, align 8
  %86 = load %struct.type*, %struct.type** %8, align 8
  %87 = call %struct.value* @allocate_value(%struct.type* %86)
  store %struct.value* %87, %struct.value** %12, align 8
  %88 = load %struct.value*, %struct.value** %12, align 8
  %89 = call i64 @VALUE_CONTENTS_RAW(%struct.value* %88)
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.value*, %struct.value** %5, align 8
  %92 = call i64 @VALUE_CONTENTS(%struct.value* %91)
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.type*, %struct.type** %8, align 8
  %95 = call i32 @TYPE_LENGTH(%struct.type* %94)
  %96 = call i32 @memcpy(i8* %90, i8* %93, i32 %95)
  %97 = load %struct.value*, %struct.value** %12, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = call %struct.value* @place_on_stack(%struct.value* %97, i32* %98)
  store %struct.value* %99, %struct.value** %5, align 8
  br label %100

100:                                              ; preds = %82, %77
  %101 = load %struct.value*, %struct.value** %5, align 8
  %102 = call %struct.value* @value_addr(%struct.value* %101)
  store %struct.value* %102, %struct.value** %4, align 8
  br label %117

103:                                              ; preds = %72
  br label %104

104:                                              ; preds = %103
  br label %114

105:                                              ; preds = %55
  %106 = load %struct.type*, %struct.type** %8, align 8
  %107 = call i64 @TYPE_CODE(%struct.type* %106)
  %108 = load i64, i64* @TYPE_CODE_PTR, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.value*, %struct.value** %5, align 8
  %112 = call %struct.value* @ada_value_ind(%struct.value* %111)
  store %struct.value* %112, %struct.value** %4, align 8
  br label %117

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %104
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.value*, %struct.value** %5, align 8
  store %struct.value* %116, %struct.value** %4, align 8
  br label %117

117:                                              ; preds = %115, %110, %100, %69, %50
  %118 = load %struct.value*, %struct.value** %4, align 8
  ret %struct.value* %118
}

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i64 @ada_is_array_descriptor(%struct.type*) #1

declare dso_local %struct.value* @make_array_descriptor(%struct.type*, %struct.value*, i32*) #1

declare dso_local %struct.value* @desc_data(%struct.value*) #1

declare dso_local i64 @VALUE_LVAL(%struct.value*) #1

declare dso_local %struct.value* @allocate_value(%struct.type*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @VALUE_CONTENTS_RAW(%struct.value*) #1

declare dso_local i64 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.value* @place_on_stack(%struct.value*, i32*) #1

declare dso_local %struct.value* @value_addr(%struct.value*) #1

declare dso_local %struct.value* @ada_value_ind(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
