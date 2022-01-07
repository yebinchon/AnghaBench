; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-typeprint.c_f_type_print_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-typeprint.c_f_type_print_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@QUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"<type unknown>\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"PTR TO -> ( \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"REF TO -> ( \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"VOID\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"struct <unknown>\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"<unknown type>\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"<range type>\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"character\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"complex*%d\00", align 1
@BOUND_CANNOT_BE_DETERMINED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"character*(*)\00", align 1
@BOUND_FETCH_ERROR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"character*???\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"character*%d\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Invalid type code (%d) in symbol table.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f_type_print_base(%struct.type* %0, %struct.ui_file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %5, align 8
  store %struct.ui_file* %1, %struct.ui_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @QUIT, align 4
  %12 = call i32 @wrap_here(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.type*, %struct.type** %5, align 8
  %14 = icmp eq %struct.type* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %17 = call i32 @fputs_filtered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %16)
  br label %146

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load %struct.type*, %struct.type** %5, align 8
  %23 = call i8* @TYPE_NAME(%struct.type* %22)
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load %struct.type*, %struct.type** %5, align 8
  %27 = call i32 @TYPE_CODE(%struct.type* %26)
  %28 = icmp eq i32 %27, 137
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.type*, %struct.type** %5, align 8
  %31 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %32 = call i32 @print_equivalent_f77_float_type(%struct.type* %30, %struct.ui_file* %31)
  br label %38

33:                                               ; preds = %25
  %34 = load %struct.type*, %struct.type** %5, align 8
  %35 = call i8* @TYPE_NAME(%struct.type* %34)
  %36 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %37 = call i32 @fputs_filtered(i8* %35, %struct.ui_file* %36)
  br label %38

38:                                               ; preds = %33, %29
  br label %146

39:                                               ; preds = %21, %18
  %40 = load %struct.type*, %struct.type** %5, align 8
  %41 = call i32 @TYPE_CODE(%struct.type* %40)
  %42 = icmp ne i32 %41, 130
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.type*, %struct.type** %5, align 8
  %45 = call i32 @CHECK_TYPEDEF(%struct.type* %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load %struct.type*, %struct.type** %5, align 8
  %48 = call i32 @TYPE_CODE(%struct.type* %47)
  switch i32 %48, label %132 [
    i32 130, label %49
    i32 141, label %54
    i32 136, label %54
    i32 134, label %60
    i32 132, label %67
    i32 128, label %74
    i32 129, label %77
    i32 138, label %80
    i32 133, label %83
    i32 140, label %86
    i32 135, label %89
    i32 139, label %99
    i32 137, label %104
    i32 131, label %108
  ]

49:                                               ; preds = %46
  %50 = load %struct.type*, %struct.type** %5, align 8
  %51 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %50)
  %52 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %53 = load i32, i32* %8, align 4
  call void @f_type_print_base(%struct.type* %51, %struct.ui_file* %52, i32 0, i32 %53)
  br label %146

54:                                               ; preds = %46, %46
  %55 = load %struct.type*, %struct.type** %5, align 8
  %56 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %55)
  %57 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  call void @f_type_print_base(%struct.type* %56, %struct.ui_file* %57, i32 %58, i32 %59)
  br label %146

60:                                               ; preds = %46
  %61 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %62 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.type*, %struct.type** %5, align 8
  %64 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %63)
  %65 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %66 = load i32, i32* %8, align 4
  call void @f_type_print_base(%struct.type* %64, %struct.ui_file* %65, i32 0, i32 %66)
  br label %146

67:                                               ; preds = %46
  %68 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %69 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.type*, %struct.type** %5, align 8
  %71 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %70)
  %72 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %73 = load i32, i32* %8, align 4
  call void @f_type_print_base(%struct.type* %71, %struct.ui_file* %72, i32 0, i32 %73)
  br label %146

74:                                               ; preds = %46
  %75 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %76 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %146

77:                                               ; preds = %46
  %78 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %79 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %146

80:                                               ; preds = %46
  %81 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %82 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %146

83:                                               ; preds = %46
  %84 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %85 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %146

86:                                               ; preds = %46
  %87 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %88 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %146

89:                                               ; preds = %46
  %90 = load %struct.type*, %struct.type** %5, align 8
  %91 = call i8* @TYPE_NAME(%struct.type* %90)
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %96 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %98

97:                                               ; preds = %89
  br label %131

98:                                               ; preds = %94
  br label %146

99:                                               ; preds = %46
  %100 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %101 = load %struct.type*, %struct.type** %5, align 8
  %102 = call i32 @TYPE_LENGTH(%struct.type* %101)
  %103 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %102)
  br label %146

104:                                              ; preds = %46
  %105 = load %struct.type*, %struct.type** %5, align 8
  %106 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %107 = call i32 @print_equivalent_f77_float_type(%struct.type* %105, %struct.ui_file* %106)
  br label %146

108:                                              ; preds = %46
  %109 = load %struct.type*, %struct.type** %5, align 8
  %110 = call i32 @TYPE_ARRAY_UPPER_BOUND_TYPE(%struct.type* %109)
  %111 = load i32, i32* @BOUND_CANNOT_BE_DETERMINED, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %115 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  br label %130

116:                                              ; preds = %108
  %117 = load %struct.type*, %struct.type** %5, align 8
  %118 = call i32 @f77_get_dynamic_upperbound(%struct.type* %117, i32* %10)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @BOUND_FETCH_ERROR, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %124 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  br label %129

125:                                              ; preds = %116
  %126 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %125, %122
  br label %130

130:                                              ; preds = %129, %113
  br label %146

131:                                              ; preds = %97
  br label %132

132:                                              ; preds = %46, %131
  %133 = load %struct.type*, %struct.type** %5, align 8
  %134 = call i8* @TYPE_NAME(%struct.type* %133)
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load %struct.type*, %struct.type** %5, align 8
  %138 = call i8* @TYPE_NAME(%struct.type* %137)
  %139 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %140 = call i32 @fputs_filtered(i8* %138, %struct.ui_file* %139)
  br label %145

141:                                              ; preds = %132
  %142 = load %struct.type*, %struct.type** %5, align 8
  %143 = call i32 @TYPE_CODE(%struct.type* %142)
  %144 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %141, %136
  br label %146

146:                                              ; preds = %15, %38, %145, %130, %104, %99, %98, %86, %83, %80, %77, %74, %67, %60, %54, %49
  ret void
}

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i8* @TYPE_NAME(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @print_equivalent_f77_float_type(%struct.type*, %struct.ui_file*) #1

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @TYPE_ARRAY_UPPER_BOUND_TYPE(%struct.type*) #1

declare dso_local i32 @f77_get_dynamic_upperbound(%struct.type*, i32*) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
