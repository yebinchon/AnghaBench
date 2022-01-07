; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_array_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"array (\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"___XA\00", align 1
@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s<>\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c") of \00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c" <packed: %d-bit elements>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.ui_file*, i32, i32)* @print_array_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_array_type(%struct.type* %0, %struct.ui_file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.type*, align 8
  %12 = alloca %struct.type*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %5, align 8
  store %struct.ui_file* %1, %struct.ui_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %17 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %22 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %122

23:                                               ; preds = %4
  %24 = load %struct.type*, %struct.type** %5, align 8
  %25 = call i64 @ada_is_packed_array_type(%struct.type* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.type*, %struct.type** %5, align 8
  %29 = call %struct.type* @ada_coerce_to_simple_array_type(%struct.type* %28)
  store %struct.type* %29, %struct.type** %5, align 8
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.type*, %struct.type** %5, align 8
  %32 = call i64 @ada_is_simple_array(%struct.type* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %103

34:                                               ; preds = %30
  %35 = load %struct.type*, %struct.type** %5, align 8
  %36 = call %struct.type* @ada_find_parallel_type(%struct.type* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store %struct.type* %36, %struct.type** %11, align 8
  store i32 0, i32* %9, align 4
  %37 = load %struct.type*, %struct.type** %11, align 8
  %38 = icmp eq %struct.type* %37, null
  br i1 %38, label %39, label %69

39:                                               ; preds = %34
  %40 = load %struct.type*, %struct.type** %5, align 8
  store %struct.type* %40, %struct.type** %12, align 8
  br label %41

41:                                               ; preds = %65, %39
  %42 = load %struct.type*, %struct.type** %12, align 8
  %43 = call i64 @TYPE_CODE(%struct.type* %42)
  %44 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %41
  %47 = load %struct.type*, %struct.type** %12, align 8
  %48 = load %struct.type*, %struct.type** %5, align 8
  %49 = icmp ne %struct.type* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %52 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %46
  %54 = load %struct.type*, %struct.type** %12, align 8
  %55 = call i32 @TYPE_INDEX_TYPE(%struct.type* %54)
  %56 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %57 = call i32 @print_range(i32 %55, %struct.ui_file* %56)
  %58 = load %struct.type*, %struct.type** %12, align 8
  %59 = call i32 @TYPE_FIELD_BITSIZE(%struct.type* %58, i32 0)
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.type*, %struct.type** %12, align 8
  %63 = call i32 @TYPE_FIELD_BITSIZE(%struct.type* %62, i32 0)
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %53
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.type*, %struct.type** %12, align 8
  %67 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %66)
  store %struct.type* %67, %struct.type** %12, align 8
  br label %41

68:                                               ; preds = %41
  br label %102

69:                                               ; preds = %34
  %70 = load %struct.type*, %struct.type** %11, align 8
  %71 = call i32 @TYPE_NFIELDS(%struct.type* %70)
  store i32 %71, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %72 = load %struct.type*, %struct.type** %5, align 8
  store %struct.type* %72, %struct.type** %12, align 8
  br label %73

73:                                               ; preds = %96, %69
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %73
  %78 = load i32, i32* %13, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %82 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.type*, %struct.type** %11, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @TYPE_FIELD_NAME(%struct.type* %84, i32 %85)
  %87 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %88 = call i32 @print_range_type_named(i32 %86, %struct.ui_file* %87)
  %89 = load %struct.type*, %struct.type** %12, align 8
  %90 = call i32 @TYPE_FIELD_BITSIZE(%struct.type* %89, i32 0)
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load %struct.type*, %struct.type** %12, align 8
  %94 = call i32 @TYPE_FIELD_BITSIZE(%struct.type* %93, i32 0)
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %92, %83
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  %99 = load %struct.type*, %struct.type** %12, align 8
  %100 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %99)
  store %struct.type* %100, %struct.type** %12, align 8
  br label %73

101:                                              ; preds = %73
  br label %102

102:                                              ; preds = %101, %68
  br label %121

103:                                              ; preds = %30
  %104 = load %struct.type*, %struct.type** %5, align 8
  %105 = call i32 @ada_array_arity(%struct.type* %104)
  store i32 %105, i32* %15, align 4
  store i32 %105, i32* %14, align 4
  br label %106

106:                                              ; preds = %117, %103
  %107 = load i32, i32* %14, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %116 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %14, align 4
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %106

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120, %102
  br label %122

122:                                              ; preds = %121, %20
  %123 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %124 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %125 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %126 = load %struct.type*, %struct.type** %5, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @ada_array_element_type(%struct.type* %126, i32 %127)
  %129 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  br label %136

133:                                              ; preds = %122
  %134 = load i32, i32* %7, align 4
  %135 = sub nsw i32 %134, 1
  br label %136

136:                                              ; preds = %133, %132
  %137 = phi i32 [ 0, %132 ], [ %135, %133 ]
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  %140 = call i32 @ada_print_type(i32 %128, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %129, i32 %137, i32 %139)
  %141 = load i32, i32* %9, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %144, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %143, %136
  ret void
}

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i64 @ada_is_packed_array_type(%struct.type*) #1

declare dso_local %struct.type* @ada_coerce_to_simple_array_type(%struct.type*) #1

declare dso_local i64 @ada_is_simple_array(%struct.type*) #1

declare dso_local %struct.type* @ada_find_parallel_type(%struct.type*, i8*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @print_range(i32, %struct.ui_file*) #1

declare dso_local i32 @TYPE_INDEX_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_FIELD_BITSIZE(%struct.type*, i32) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @print_range_type_named(i32, %struct.ui_file*) #1

declare dso_local i32 @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i32 @ada_array_arity(%struct.type*) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @ada_print_type(i32, i8*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @ada_array_element_type(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
