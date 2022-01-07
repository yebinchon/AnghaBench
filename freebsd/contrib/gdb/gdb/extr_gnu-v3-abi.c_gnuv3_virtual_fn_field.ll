; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-v3-abi.c_gnuv3_virtual_fn_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-v3-abi.c_gnuv3_virtual_fn_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.fn_field = type { i32 }
%struct.type = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@vtable_type_gdbarch_data = common dso_local global i32 0, align 4
@TYPE_CODE_CLASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Only classes can have virtual functions.\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Could not find virtual table pointer for class \22%s\22.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@vtable_field_virtual_functions = common dso_local global i64 0, align 8
@builtin_type_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.value**, %struct.fn_field*, i32, %struct.type*, i32)* @gnuv3_virtual_fn_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @gnuv3_virtual_fn_field(%struct.value** %0, %struct.fn_field* %1, i32 %2, %struct.type* %3, i32 %4) #0 {
  %6 = alloca %struct.value**, align 8
  %7 = alloca %struct.fn_field*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.type*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.type*, align 8
  %12 = alloca %struct.value*, align 8
  %13 = alloca %struct.type*, align 8
  %14 = alloca %struct.type*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.value*, align 8
  %17 = alloca %struct.value*, align 8
  store %struct.value** %0, %struct.value*** %6, align 8
  store %struct.fn_field* %1, %struct.fn_field** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.type* %3, %struct.type** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* @current_gdbarch, align 4
  %19 = load i32, i32* @vtable_type_gdbarch_data, align 4
  %20 = call %struct.type* @gdbarch_data(i32 %18, i32 %19)
  store %struct.type* %20, %struct.type** %11, align 8
  %21 = load %struct.value**, %struct.value*** %6, align 8
  %22 = load %struct.value*, %struct.value** %21, align 8
  store %struct.value* %22, %struct.value** %12, align 8
  %23 = load %struct.value*, %struct.value** %12, align 8
  %24 = call i32 @VALUE_TYPE(%struct.value* %23)
  %25 = call %struct.type* @check_typedef(i32 %24)
  store %struct.type* %25, %struct.type** %13, align 8
  %26 = load %struct.type*, %struct.type** %13, align 8
  %27 = call i64 @TYPE_CODE(%struct.type* %26)
  %28 = load i64, i64* @TYPE_CODE_CLASS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %5
  %33 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.type* @TYPE_FN_FIELD_FCONTEXT(%struct.fn_field* %33, i32 %34)
  store %struct.type* %35, %struct.type** %14, align 8
  %36 = load %struct.type*, %struct.type** %14, align 8
  %37 = icmp ne %struct.type* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load %struct.type*, %struct.type** %9, align 8
  %40 = call %struct.type* @TYPE_VPTR_BASETYPE(%struct.type* %39)
  store %struct.type* %40, %struct.type** %14, align 8
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.type*, %struct.type** %14, align 8
  %43 = call i64 @TYPE_VPTR_FIELDNO(%struct.type* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.type*, %struct.type** %14, align 8
  %47 = call i32 @fill_in_vptr_fieldno(%struct.type* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.type*, %struct.type** %14, align 8
  %50 = call i64 @TYPE_VPTR_FIELDNO(%struct.type* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load %struct.type*, %struct.type** %14, align 8
  %54 = call i8* @TYPE_TAG_NAME(%struct.type* %53)
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.type*, %struct.type** %14, align 8
  %58 = call i8* @TYPE_TAG_NAME(%struct.type* %57)
  br label %60

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i8* [ %58, %56 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %59 ]
  %62 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %60, %48
  %64 = load %struct.type*, %struct.type** %14, align 8
  %65 = load %struct.type*, %struct.type** %13, align 8
  %66 = icmp ne %struct.type* %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.type*, %struct.type** %14, align 8
  %69 = load %struct.value*, %struct.value** %12, align 8
  %70 = call %struct.value* @value_cast(%struct.type* %68, %struct.value* %69)
  store %struct.value* %70, %struct.value** %12, align 8
  br label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.type*, %struct.type** %14, align 8
  %73 = call %struct.type* @TYPE_VPTR_BASETYPE(%struct.type* %72)
  %74 = load %struct.type*, %struct.type** %14, align 8
  %75 = icmp ne %struct.type* %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.type*, %struct.type** %14, align 8
  %78 = call %struct.type* @TYPE_VPTR_BASETYPE(%struct.type* %77)
  %79 = load %struct.value*, %struct.value** %12, align 8
  %80 = call %struct.value* @value_cast(%struct.type* %78, %struct.value* %79)
  store %struct.value* %80, %struct.value** %12, align 8
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.value*, %struct.value** %12, align 8
  %83 = load %struct.type*, %struct.type** %14, align 8
  %84 = call i64 @TYPE_VPTR_FIELDNO(%struct.type* %83)
  %85 = call i32 @value_field(%struct.value* %82, i64 %84)
  %86 = call i64 @value_as_address(i32 %85)
  store i64 %86, i64* %15, align 8
  %87 = load %struct.type*, %struct.type** %11, align 8
  %88 = load i64, i64* %15, align 8
  %89 = call i64 (...) @vtable_address_point_offset()
  %90 = sub nsw i64 %88, %89
  %91 = load %struct.value*, %struct.value** %12, align 8
  %92 = call i32 @VALUE_BFD_SECTION(%struct.value* %91)
  %93 = call %struct.value* @value_at_lazy(%struct.type* %87, i64 %90, i32 %92)
  store %struct.value* %93, %struct.value** %16, align 8
  %94 = load %struct.value*, %struct.value** %16, align 8
  %95 = load i64, i64* @vtable_field_virtual_functions, align 8
  %96 = call i32 @value_field(%struct.value* %94, i64 %95)
  %97 = load i32, i32* @builtin_type_int, align 4
  %98 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @TYPE_FN_FIELD_VOFFSET(%struct.fn_field* %98, i32 %99)
  %101 = call i32 @value_from_longest(i32 %97, i32 %100)
  %102 = call %struct.value* @value_subscript(i32 %96, i32 %101)
  store %struct.value* %102, %struct.value** %17, align 8
  %103 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @TYPE_FN_FIELD_TYPE(%struct.fn_field* %103, i32 %104)
  %106 = call %struct.type* @lookup_pointer_type(i32 %105)
  %107 = load %struct.value*, %struct.value** %17, align 8
  %108 = call %struct.value* @value_cast(%struct.type* %106, %struct.value* %107)
  store %struct.value* %108, %struct.value** %17, align 8
  %109 = load %struct.type*, %struct.type** %9, align 8
  %110 = load %struct.value**, %struct.value*** %6, align 8
  %111 = load %struct.value*, %struct.value** %110, align 8
  %112 = call %struct.value* @value_cast(%struct.type* %109, %struct.value* %111)
  %113 = call %struct.value* @value_addr(%struct.value* %112)
  %114 = load %struct.value**, %struct.value*** %6, align 8
  store %struct.value* %113, %struct.value** %114, align 8
  %115 = load %struct.value*, %struct.value** %17, align 8
  ret %struct.value* %115
}

declare dso_local %struct.type* @gdbarch_data(i32, i32) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.type* @TYPE_FN_FIELD_FCONTEXT(%struct.fn_field*, i32) #1

declare dso_local %struct.type* @TYPE_VPTR_BASETYPE(%struct.type*) #1

declare dso_local i64 @TYPE_VPTR_FIELDNO(%struct.type*) #1

declare dso_local i32 @fill_in_vptr_fieldno(%struct.type*) #1

declare dso_local i8* @TYPE_TAG_NAME(%struct.type*) #1

declare dso_local %struct.value* @value_cast(%struct.type*, %struct.value*) #1

declare dso_local i64 @value_as_address(i32) #1

declare dso_local i32 @value_field(%struct.value*, i64) #1

declare dso_local %struct.value* @value_at_lazy(%struct.type*, i64, i32) #1

declare dso_local i64 @vtable_address_point_offset(...) #1

declare dso_local i32 @VALUE_BFD_SECTION(%struct.value*) #1

declare dso_local %struct.value* @value_subscript(i32, i32) #1

declare dso_local i32 @value_from_longest(i32, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_VOFFSET(%struct.fn_field*, i32) #1

declare dso_local %struct.type* @lookup_pointer_type(i32) #1

declare dso_local i32 @TYPE_FN_FIELD_TYPE(%struct.fn_field*, i32) #1

declare dso_local %struct.value* @value_addr(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
