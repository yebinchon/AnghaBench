; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_ada_value_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_ada_value_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.ui_file = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_REF = common dso_local global i64 0, align 8
@TYPE_CODE_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c") (...?)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ada_value_print(%struct.value* %0, %struct.ui_file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.value*, align 8
  %7 = alloca %struct.ui_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.type*, align 8
  %13 = alloca %struct.value*, align 8
  store %struct.value* %0, %struct.value** %6, align 8
  store %struct.ui_file* %1, %struct.ui_file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.value*, %struct.value** %6, align 8
  %15 = call i8* @VALUE_CONTENTS(%struct.value* %14)
  store i8* %15, i8** %10, align 8
  %16 = load %struct.value*, %struct.value** %6, align 8
  %17 = call i64 @VALUE_ADDRESS(%struct.value* %16)
  %18 = load %struct.value*, %struct.value** %6, align 8
  %19 = call i64 @VALUE_OFFSET(%struct.value* %18)
  %20 = add nsw i64 %17, %19
  store i64 %20, i64* %11, align 8
  %21 = load %struct.value*, %struct.value** %6, align 8
  %22 = call i32 @VALUE_TYPE(%struct.value* %21)
  %23 = load i8*, i8** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call %struct.type* @ada_to_fixed_type(i32 %22, i8* %23, i64 %24, i32* null)
  store %struct.type* %25, %struct.type** %12, align 8
  %26 = load %struct.type*, %struct.type** %12, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call %struct.value* @value_from_contents_and_address(%struct.type* %26, i8* %27, i64 %28)
  store %struct.value* %29, %struct.value** %13, align 8
  %30 = load %struct.type*, %struct.type** %12, align 8
  %31 = call i64 @TYPE_CODE(%struct.type* %30)
  %32 = load i64, i64* @TYPE_CODE_PTR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %4
  %35 = load %struct.type*, %struct.type** %12, align 8
  %36 = call i64 @TYPE_CODE(%struct.type* %35)
  %37 = load i64, i64* @TYPE_CODE_REF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %34, %4
  %40 = load %struct.type*, %struct.type** %12, align 8
  %41 = call i64 @TYPE_CODE(%struct.type* %40)
  %42 = load i64, i64* @TYPE_CODE_PTR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load %struct.type*, %struct.type** %12, align 8
  %46 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %45)
  %47 = call i32 @TYPE_LENGTH(%struct.type* %46)
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %48, 1
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct.type*, %struct.type** %12, align 8
  %52 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %51)
  %53 = call i64 @TYPE_CODE(%struct.type* %52)
  %54 = load i64, i64* @TYPE_CODE_INT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.type*, %struct.type** %12, align 8
  %58 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %57)
  %59 = call i32 @TYPE_UNSIGNED(%struct.type* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %70

62:                                               ; preds = %56, %50, %44, %39
  %63 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %64 = call i32 @fprintf_filtered(%struct.ui_file* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.type*, %struct.type** %12, align 8
  %66 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %67 = call i32 @type_print(%struct.type* %65, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %66, i32 -1)
  %68 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %69 = call i32 @fprintf_filtered(%struct.ui_file* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %62, %61
  br label %97

71:                                               ; preds = %34
  %72 = load %struct.type*, %struct.type** %12, align 8
  %73 = call i64 @ada_is_array_descriptor(%struct.type* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %77 = call i32 @fprintf_filtered(%struct.ui_file* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.type*, %struct.type** %12, align 8
  %79 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %80 = call i32 @type_print(%struct.type* %78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %79, i32 -1)
  %81 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %82 = call i32 @fprintf_filtered(%struct.ui_file* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %96

83:                                               ; preds = %71
  %84 = load %struct.type*, %struct.type** %12, align 8
  %85 = call i64 @ada_is_bogus_array_descriptor(%struct.type* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %89 = call i32 @fprintf_filtered(%struct.ui_file* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.type*, %struct.type** %12, align 8
  %91 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %92 = call i32 @type_print(%struct.type* %90, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %91, i32 -1)
  %93 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %94 = call i32 @fprintf_filtered(%struct.ui_file* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %106

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95, %75
  br label %97

97:                                               ; preds = %96, %70
  %98 = load %struct.type*, %struct.type** %12, align 8
  %99 = load %struct.value*, %struct.value** %13, align 8
  %100 = call i8* @VALUE_CONTENTS(%struct.value* %99)
  %101 = load i64, i64* %11, align 8
  %102 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @val_print(%struct.type* %98, i8* %100, i32 0, i64 %101, %struct.ui_file* %102, i32 %103, i32 1, i32 0, i32 %104)
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %97, %87
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i8* @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i64 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i64 @VALUE_OFFSET(%struct.value*) #1

declare dso_local %struct.type* @ada_to_fixed_type(i32, i8*, i64, i32*) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local %struct.value* @value_from_contents_and_address(%struct.type*, i8*, i64) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_UNSIGNED(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local i32 @type_print(%struct.type*, i8*, %struct.ui_file*, i32) #1

declare dso_local i64 @ada_is_array_descriptor(%struct.type*) #1

declare dso_local i64 @ada_is_bogus_array_descriptor(%struct.type*) #1

declare dso_local i32 @val_print(%struct.type*, i8*, i32, i64, %struct.ui_file*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
