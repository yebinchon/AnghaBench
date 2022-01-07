; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-typeprint.c_c_type_print_varspec_suffix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-typeprint.c_c_type_print_varspec_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@QUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@BOUND_CANNOT_BE_DETERMINED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@language_cplus = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"type not handled in c_type_print_varspec_suffix()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_type_print_varspec_suffix(%struct.type* %0, %struct.ui_file* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.ui_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %6, align 8
  store %struct.ui_file* %1, %struct.ui_file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.type*, %struct.type** %6, align 8
  %14 = icmp eq %struct.type* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %169

16:                                               ; preds = %5
  %17 = load %struct.type*, %struct.type** %6, align 8
  %18 = call i64 @TYPE_NAME(%struct.type* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %169

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @QUIT, align 4
  %26 = load %struct.type*, %struct.type** %6, align 8
  %27 = call i32 @TYPE_CODE(%struct.type* %26)
  switch i32 %27, label %167 [
    i32 151, label %28
    i32 141, label %66
    i32 140, label %77
    i32 138, label %95
    i32 136, label %95
    i32 143, label %100
    i32 131, label %160
    i32 130, label %166
    i32 133, label %166
    i32 129, label %166
    i32 146, label %166
    i32 142, label %166
    i32 144, label %166
    i32 128, label %166
    i32 145, label %166
    i32 148, label %166
    i32 149, label %166
    i32 135, label %166
    i32 137, label %166
    i32 134, label %166
    i32 150, label %166
    i32 147, label %166
    i32 132, label %166
    i32 139, label %166
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %33 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %36 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.type*, %struct.type** %6, align 8
  %38 = call i32 @TYPE_LENGTH(%struct.type* %37)
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = load %struct.type*, %struct.type** %6, align 8
  %42 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %41)
  %43 = call i32 @TYPE_LENGTH(%struct.type* %42)
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load %struct.type*, %struct.type** %6, align 8
  %47 = call i32 @TYPE_ARRAY_UPPER_BOUND_TYPE(%struct.type* %46)
  %48 = load i32, i32* @BOUND_CANNOT_BE_DETERMINED, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %52 = load %struct.type*, %struct.type** %6, align 8
  %53 = call i32 @TYPE_LENGTH(%struct.type* %52)
  %54 = load %struct.type*, %struct.type** %6, align 8
  %55 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %54)
  %56 = call i32 @TYPE_LENGTH(%struct.type* %55)
  %57 = sdiv i32 %53, %56
  %58 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %50, %45, %40, %34
  %60 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %61 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.type*, %struct.type** %6, align 8
  %63 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %62)
  %64 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %65 = load i32, i32* %8, align 4
  call void @c_type_print_varspec_suffix(%struct.type* %63, %struct.ui_file* %64, i32 %65, i32 0, i32 0)
  br label %169

66:                                               ; preds = %24
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %71 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.type*, %struct.type** %6, align 8
  %74 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %73)
  %75 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %76 = load i32, i32* %8, align 4
  call void @c_type_print_varspec_suffix(%struct.type* %74, %struct.ui_file* %75, i32 %76, i32 0, i32 0)
  br label %169

77:                                               ; preds = %24
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %82 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.type*, %struct.type** %6, align 8
  %85 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %84)
  %86 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %87 = load i32, i32* %8, align 4
  call void @c_type_print_varspec_suffix(%struct.type* %85, %struct.ui_file* %86, i32 %87, i32 0, i32 0)
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.type*, %struct.type** %6, align 8
  %92 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %93 = call i32 @c_type_print_args(%struct.type* %91, %struct.ui_file* %92)
  br label %94

94:                                               ; preds = %90, %83
  br label %169

95:                                               ; preds = %24, %24
  %96 = load %struct.type*, %struct.type** %6, align 8
  %97 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %96)
  %98 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %99 = load i32, i32* %8, align 4
  call void @c_type_print_varspec_suffix(%struct.type* %97, %struct.ui_file* %98, i32 %99, i32 1, i32 0)
  br label %169

100:                                              ; preds = %24
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %105 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %154, label %109

109:                                              ; preds = %106
  %110 = load %struct.type*, %struct.type** %6, align 8
  %111 = call i32 @TYPE_NFIELDS(%struct.type* %110)
  store i32 %111, i32* %12, align 4
  %112 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %113 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %109
  %117 = load %struct.type*, %struct.type** %6, align 8
  %118 = call i32 @TYPE_PROTOTYPED(%struct.type* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %116
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @language_cplus, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %120, %116
  %127 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %128 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %151

129:                                              ; preds = %120, %109
  store i32 0, i32* %11, align 4
  br label %130

130:                                              ; preds = %147, %129
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %150

134:                                              ; preds = %130
  %135 = load i32, i32* %11, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %139 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %138)
  %140 = call i32 @wrap_here(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %141

141:                                              ; preds = %137, %134
  %142 = load %struct.type*, %struct.type** %6, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @TYPE_FIELD_TYPE(%struct.type* %142, i32 %143)
  %145 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %146 = call i32 @c_print_type(i32 %144, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %struct.ui_file* %145, i32 -1, i32 0)
  br label %147

147:                                              ; preds = %141
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %130

150:                                              ; preds = %130
  br label %151

151:                                              ; preds = %150, %126
  %152 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %153 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %106
  %155 = load %struct.type*, %struct.type** %6, align 8
  %156 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %155)
  %157 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %9, align 4
  call void @c_type_print_varspec_suffix(%struct.type* %156, %struct.ui_file* %157, i32 %158, i32 %159, i32 0)
  br label %169

160:                                              ; preds = %24
  %161 = load %struct.type*, %struct.type** %6, align 8
  %162 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %161)
  %163 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %9, align 4
  call void @c_type_print_varspec_suffix(%struct.type* %162, %struct.ui_file* %163, i32 %164, i32 %165, i32 0)
  br label %169

166:                                              ; preds = %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24
  br label %169

167:                                              ; preds = %24
  %168 = call i32 @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  br label %169

169:                                              ; preds = %15, %23, %167, %166, %160, %154, %95, %94, %72, %59
  ret void
}

declare dso_local i64 @TYPE_NAME(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_ARRAY_UPPER_BOUND_TYPE(%struct.type*) #1

declare dso_local i32 @c_type_print_args(%struct.type*, %struct.ui_file*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_PROTOTYPED(%struct.type*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @c_print_type(i32, i8*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
