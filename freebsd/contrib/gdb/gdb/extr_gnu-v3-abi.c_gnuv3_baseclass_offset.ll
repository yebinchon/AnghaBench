; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-v3-abi.c_gnuv3_baseclass_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-v3-abi.c_gnuv3_baseclass_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@vtable_type_gdbarch_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Expected a negative vbase offset (old compiler?)\00", align 1
@builtin_type_void_data_ptr = common dso_local global %struct.type* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Misaligned vbase offset.\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Illegal vptr offset in class %s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@builtin_type_int = common dso_local global i32 0, align 4
@vtable_field_vcall_and_vbase_offsets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*, i32, i8*, i64)* @gnuv3_baseclass_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnuv3_baseclass_offset(%struct.type* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.type*, align 8
  %11 = alloca %struct.value*, align 8
  %12 = alloca %struct.type*, align 8
  %13 = alloca %struct.value*, align 8
  %14 = alloca %struct.value*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.type* %0, %struct.type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i32, i32* @current_gdbarch, align 4
  %19 = load i32, i32* @vtable_type_gdbarch_data, align 4
  %20 = call %struct.type* @gdbarch_data(i32 %18, i32 %19)
  store %struct.type* %20, %struct.type** %10, align 8
  %21 = load %struct.type*, %struct.type** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @BASETYPE_VIA_VIRTUAL(%struct.type* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %4
  %26 = load %struct.type*, %struct.type** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @TYPE_BASECLASS_BITPOS(%struct.type* %26, i32 %27)
  %29 = sdiv i32 %28, 8
  store i32 %29, i32* %5, align 4
  br label %112

30:                                               ; preds = %4
  %31 = load %struct.type*, %struct.type** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @TYPE_BASECLASS_BITPOS(%struct.type* %31, i32 %32)
  %34 = sdiv i32 %33, 8
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %16, align 8
  %37 = call i64 (...) @vtable_address_point_offset()
  %38 = sub nsw i64 0, %37
  %39 = icmp sge i64 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %30
  %43 = load i64, i64* %16, align 8
  %44 = call i64 (...) @vtable_address_point_offset()
  %45 = add nsw i64 %43, %44
  store i64 %45, i64* %16, align 8
  %46 = load i64, i64* %16, align 8
  %47 = sub nsw i64 0, %46
  %48 = load %struct.type*, %struct.type** @builtin_type_void_data_ptr, align 8
  %49 = call i64 @TYPE_LENGTH(%struct.type* %48)
  %50 = srem i64 %47, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %42
  %55 = load i64, i64* %16, align 8
  %56 = load %struct.type*, %struct.type** @builtin_type_void_data_ptr, align 8
  %57 = call i64 @TYPE_LENGTH(%struct.type* %56)
  %58 = trunc i64 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = sdiv i64 %55, %59
  store i64 %60, i64* %16, align 8
  %61 = load %struct.type*, %struct.type** %6, align 8
  %62 = call %struct.type* @TYPE_VPTR_BASETYPE(%struct.type* %61)
  store %struct.type* %62, %struct.type** %12, align 8
  %63 = load %struct.type*, %struct.type** %12, align 8
  %64 = call i64 @TYPE_VPTR_FIELDNO(%struct.type* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load %struct.type*, %struct.type** %12, align 8
  %68 = call i32 @fill_in_vptr_fieldno(%struct.type* %67)
  br label %69

69:                                               ; preds = %66, %54
  %70 = load %struct.type*, %struct.type** %12, align 8
  %71 = call i64 @TYPE_VPTR_FIELDNO(%struct.type* %70)
  %72 = icmp sge i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = load %struct.type*, %struct.type** %12, align 8
  %75 = load %struct.type*, %struct.type** %12, align 8
  %76 = call i64 @TYPE_VPTR_FIELDNO(%struct.type* %75)
  %77 = call i64 @TYPE_FIELD_BITPOS(%struct.type* %74, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = load %struct.type*, %struct.type** %12, align 8
  %81 = call i8* @TYPE_NAME(%struct.type* %80)
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.type*, %struct.type** %12, align 8
  %85 = call i8* @TYPE_NAME(%struct.type* %84)
  br label %87

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %83
  %88 = phi i8* [ %85, %83 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %86 ]
  %89 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %87, %73, %69
  %91 = load %struct.type*, %struct.type** @builtin_type_void_data_ptr, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call %struct.value* @value_at_lazy(%struct.type* %91, i64 %92, i32* null)
  %94 = call i64 @value_as_address(%struct.value* %93)
  store i64 %94, i64* %15, align 8
  %95 = load %struct.type*, %struct.type** %10, align 8
  %96 = load i64, i64* %15, align 8
  %97 = call i64 (...) @vtable_address_point_offset()
  %98 = sub nsw i64 %96, %97
  %99 = call %struct.value* @value_at_lazy(%struct.type* %95, i64 %98, i32* null)
  store %struct.value* %99, %struct.value** %11, align 8
  %100 = load i32, i32* @builtin_type_int, align 4
  %101 = load i64, i64* %16, align 8
  %102 = call %struct.value* @value_from_longest(i32 %100, i64 %101)
  store %struct.value* %102, %struct.value** %13, align 8
  %103 = load %struct.value*, %struct.value** %11, align 8
  %104 = load i32, i32* @vtable_field_vcall_and_vbase_offsets, align 4
  %105 = call %struct.value* @value_field(%struct.value* %103, i32 %104)
  store %struct.value* %105, %struct.value** %14, align 8
  %106 = load %struct.value*, %struct.value** %14, align 8
  %107 = load %struct.value*, %struct.value** %13, align 8
  %108 = call i32 @value_subscript(%struct.value* %106, %struct.value* %107)
  %109 = call i64 @value_as_long(i32 %108)
  store i64 %109, i64* %17, align 8
  %110 = load i64, i64* %17, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %90, %25
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.type* @gdbarch_data(i32, i32) #1

declare dso_local i32 @BASETYPE_VIA_VIRTUAL(%struct.type*, i32) #1

declare dso_local i32 @TYPE_BASECLASS_BITPOS(%struct.type*, i32) #1

declare dso_local i64 @vtable_address_point_offset(...) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.type* @TYPE_VPTR_BASETYPE(%struct.type*) #1

declare dso_local i64 @TYPE_VPTR_FIELDNO(%struct.type*) #1

declare dso_local i32 @fill_in_vptr_fieldno(%struct.type*) #1

declare dso_local i64 @TYPE_FIELD_BITPOS(%struct.type*, i64) #1

declare dso_local i8* @TYPE_NAME(%struct.type*) #1

declare dso_local i64 @value_as_address(%struct.value*) #1

declare dso_local %struct.value* @value_at_lazy(%struct.type*, i64, i32*) #1

declare dso_local %struct.value* @value_from_longest(i32, i64) #1

declare dso_local %struct.value* @value_field(%struct.value*, i32) #1

declare dso_local i64 @value_as_long(i32) #1

declare dso_local i32 @value_subscript(%struct.value*, %struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
