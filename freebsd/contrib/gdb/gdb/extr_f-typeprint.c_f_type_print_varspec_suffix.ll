; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-typeprint.c_f_type_print_varspec_suffix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-typeprint.c_f_type_print_varspec_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@f_type_print_varspec_suffix.arrayprint_recurse_level = internal global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@BOUND_FETCH_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@BOUND_CANNOT_BE_DETERMINED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.ui_file*, i32, i32, i32)* @f_type_print_varspec_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_type_print_varspec_suffix(%struct.type* %0, %struct.ui_file* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.ui_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %6, align 8
  store %struct.ui_file* %1, %struct.ui_file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.type*, %struct.type** %6, align 8
  %16 = icmp eq %struct.type* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %135

18:                                               ; preds = %5
  %19 = load %struct.type*, %struct.type** %6, align 8
  %20 = call i64 @TYPE_NAME(%struct.type* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %135

26:                                               ; preds = %22, %18
  %27 = load i32, i32* @QUIT, align 4
  %28 = load %struct.type*, %struct.type** %6, align 8
  %29 = call i32 @TYPE_CODE(%struct.type* %28)
  switch i32 %29, label %135 [
    i32 149, label %30
    i32 137, label %115
    i32 135, label %115
    i32 141, label %121
    i32 130, label %134
    i32 132, label %134
    i32 129, label %134
    i32 144, label %134
    i32 140, label %134
    i32 142, label %134
    i32 128, label %134
    i32 143, label %134
    i32 146, label %134
    i32 147, label %134
    i32 134, label %134
    i32 136, label %134
    i32 133, label %134
    i32 148, label %134
    i32 138, label %134
    i32 139, label %134
    i32 145, label %134
    i32 131, label %134
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* @f_type_print_varspec_suffix.arrayprint_recurse_level, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @f_type_print_varspec_suffix.arrayprint_recurse_level, align 4
  %33 = load i32, i32* @f_type_print_varspec_suffix.arrayprint_recurse_level, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %37 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.type*, %struct.type** %6, align 8
  %40 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %39)
  %41 = call i32 @TYPE_CODE(%struct.type* %40)
  %42 = icmp eq i32 %41, 149
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.type*, %struct.type** %6, align 8
  %45 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %44)
  %46 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  call void @f_type_print_varspec_suffix(%struct.type* %45, %struct.ui_file* %46, i32 0, i32 0, i32 0)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.type*, %struct.type** %6, align 8
  %49 = call i32 @f77_get_dynamic_lowerbound(%struct.type* %48, i32* %12)
  store i32 %49, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @BOUND_FETCH_ERROR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %55 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %65

56:                                               ; preds = %47
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* %13, align 4
  br label %64

60:                                               ; preds = %56
  %61 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %59
  br label %65

65:                                               ; preds = %64, %53
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %13, align 4
  br label %72

69:                                               ; preds = %65
  %70 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %71 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %68
  %73 = load %struct.type*, %struct.type** %6, align 8
  %74 = call i32 @TYPE_ARRAY_UPPER_BOUND_TYPE(%struct.type* %73)
  %75 = load i32, i32* @BOUND_CANNOT_BE_DETERMINED, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %79 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %94

80:                                               ; preds = %72
  %81 = load %struct.type*, %struct.type** %6, align 8
  %82 = call i32 @f77_get_dynamic_upperbound(%struct.type* %81, i32* %11)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @BOUND_FETCH_ERROR, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %88 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %93

89:                                               ; preds = %80
  %90 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %86
  br label %94

94:                                               ; preds = %93, %77
  %95 = load %struct.type*, %struct.type** %6, align 8
  %96 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %95)
  %97 = call i32 @TYPE_CODE(%struct.type* %96)
  %98 = icmp ne i32 %97, 149
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.type*, %struct.type** %6, align 8
  %101 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %100)
  %102 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  call void @f_type_print_varspec_suffix(%struct.type* %101, %struct.ui_file* %102, i32 0, i32 0, i32 0)
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i32, i32* @f_type_print_varspec_suffix.arrayprint_recurse_level, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %108 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %112

109:                                              ; preds = %103
  %110 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %111 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* @f_type_print_varspec_suffix.arrayprint_recurse_level, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* @f_type_print_varspec_suffix.arrayprint_recurse_level, align 4
  br label %135

115:                                              ; preds = %26, %26
  %116 = load %struct.type*, %struct.type** %6, align 8
  %117 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %116)
  %118 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  call void @f_type_print_varspec_suffix(%struct.type* %117, %struct.ui_file* %118, i32 0, i32 1, i32 0)
  %119 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %120 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %135

121:                                              ; preds = %26
  %122 = load %struct.type*, %struct.type** %6, align 8
  %123 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %122)
  %124 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %125 = load i32, i32* %9, align 4
  call void @f_type_print_varspec_suffix(%struct.type* %123, %struct.ui_file* %124, i32 0, i32 %125, i32 0)
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %130 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %121
  %132 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %133 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %135

134:                                              ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26
  br label %135

135:                                              ; preds = %17, %25, %26, %134, %131, %115, %112
  ret void
}

declare dso_local i64 @TYPE_NAME(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @f77_get_dynamic_lowerbound(%struct.type*, i32*) #1

declare dso_local i32 @TYPE_ARRAY_UPPER_BOUND_TYPE(%struct.type*) #1

declare dso_local i32 @f77_get_dynamic_upperbound(%struct.type*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
