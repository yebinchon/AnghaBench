; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-typeprint.c_pascal_type_print_varspec_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-typeprint.c_pascal_type_print_varspec_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@QUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"function  \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"procedure \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"array \00", align 1
@BOUND_CANNOT_BE_DETERMINED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"[%d..%d] \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"of \00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"type not handled in pascal_type_print_varspec_prefix()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pascal_type_print_varspec_prefix(%struct.type* %0, %struct.ui_file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.type* %0, %struct.type** %5, align 8
  store %struct.ui_file* %1, %struct.ui_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.type*, %struct.type** %5, align 8
  %11 = icmp eq %struct.type* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %151

13:                                               ; preds = %4
  %14 = load %struct.type*, %struct.type** %5, align 8
  %15 = call i64 @TYPE_NAME(%struct.type* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %151

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @QUIT, align 4
  %23 = load %struct.type*, %struct.type** %5, align 8
  %24 = call i32 @TYPE_CODE(%struct.type* %23)
  switch i32 %24, label %149 [
    i32 138, label %25
    i32 140, label %31
    i32 139, label %61
    i32 136, label %92
    i32 142, label %98
    i32 150, label %116
    i32 130, label %148
    i32 133, label %148
    i32 129, label %148
    i32 145, label %148
    i32 141, label %148
    i32 143, label %148
    i32 128, label %148
    i32 144, label %148
    i32 147, label %148
    i32 148, label %148
    i32 135, label %148
    i32 137, label %148
    i32 134, label %148
    i32 149, label %148
    i32 146, label %148
    i32 131, label %148
    i32 132, label %148
  ]

25:                                               ; preds = %21
  %26 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %27 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.type*, %struct.type** %5, align 8
  %29 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %28)
  %30 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  call void @pascal_type_print_varspec_prefix(%struct.type* %29, %struct.ui_file* %30, i32 0, i32 1)
  br label %151

31:                                               ; preds = %21
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %36 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.type*, %struct.type** %5, align 8
  %39 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %38)
  %40 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  call void @pascal_type_print_varspec_prefix(%struct.type* %39, %struct.ui_file* %40, i32 0, i32 0)
  %41 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %42 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.type*, %struct.type** %5, align 8
  %44 = call i32 @TYPE_DOMAIN_TYPE(%struct.type* %43)
  %45 = call i8* @type_name_no_tag(i32 %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %51 = call i32 @fputs_filtered(i8* %49, %struct.ui_file* %50)
  br label %58

52:                                               ; preds = %37
  %53 = load %struct.type*, %struct.type** %5, align 8
  %54 = call i32 @TYPE_DOMAIN_TYPE(%struct.type* %53)
  %55 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @pascal_type_print_base(i32 %54, %struct.ui_file* %55, i32 0, i32 %56)
  br label %58

58:                                               ; preds = %52, %48
  %59 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %60 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %151

61:                                               ; preds = %21
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %66 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.type*, %struct.type** %5, align 8
  %69 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %68)
  %70 = call i32 @TYPE_CODE(%struct.type* %69)
  %71 = icmp ne i32 %70, 128
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %74 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %78

75:                                               ; preds = %67
  %76 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %77 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %83 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.type*, %struct.type** %5, align 8
  %85 = call i32 @TYPE_DOMAIN_TYPE(%struct.type* %84)
  %86 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @pascal_type_print_base(i32 %85, %struct.ui_file* %86, i32 0, i32 %87)
  %89 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %90 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %81, %78
  br label %151

92:                                               ; preds = %21
  %93 = load %struct.type*, %struct.type** %5, align 8
  %94 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %93)
  %95 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  call void @pascal_type_print_varspec_prefix(%struct.type* %94, %struct.ui_file* %95, i32 0, i32 1)
  %96 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %97 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %151

98:                                               ; preds = %21
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %103 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.type*, %struct.type** %5, align 8
  %106 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %105)
  %107 = call i32 @TYPE_CODE(%struct.type* %106)
  %108 = icmp ne i32 %107, 128
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %111 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %115

112:                                              ; preds = %104
  %113 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %114 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %109
  br label %151

116:                                              ; preds = %21
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %121 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %116
  %123 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %124 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %125 = load %struct.type*, %struct.type** %5, align 8
  %126 = call i32 @TYPE_LENGTH(%struct.type* %125)
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %122
  %129 = load %struct.type*, %struct.type** %5, align 8
  %130 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %129)
  %131 = call i32 @TYPE_LENGTH(%struct.type* %130)
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = load %struct.type*, %struct.type** %5, align 8
  %135 = call i32 @TYPE_ARRAY_UPPER_BOUND_TYPE(%struct.type* %134)
  %136 = load i32, i32* @BOUND_CANNOT_BE_DETERMINED, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %140 = load %struct.type*, %struct.type** %5, align 8
  %141 = call i32 @TYPE_ARRAY_LOWER_BOUND_VALUE(%struct.type* %140)
  %142 = load %struct.type*, %struct.type** %5, align 8
  %143 = call i32 @TYPE_ARRAY_UPPER_BOUND_VALUE(%struct.type* %142)
  %144 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %141, i32 %143)
  br label %145

145:                                              ; preds = %138, %133, %128, %122
  %146 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %147 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %146, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %151

148:                                              ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21
  br label %151

149:                                              ; preds = %21
  %150 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0))
  br label %151

151:                                              ; preds = %12, %20, %149, %148, %145, %115, %92, %91, %58, %25
  ret void
}

declare dso_local i64 @TYPE_NAME(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i8* @type_name_no_tag(i32) #1

declare dso_local i32 @TYPE_DOMAIN_TYPE(%struct.type*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @pascal_type_print_base(i32, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @TYPE_ARRAY_UPPER_BOUND_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_ARRAY_LOWER_BOUND_VALUE(%struct.type*) #1

declare dso_local i32 @TYPE_ARRAY_UPPER_BOUND_VALUE(%struct.type*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
