; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_s_float_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_s_float_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT = common dso_local global i32 0, align 4
@flag_mri = common dso_local global i64 0, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"missing value\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"bad floating literal: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s_float_space(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* @MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i8 0, i8* %8, align 1
  %16 = load i64, i64* @flag_mri, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i8* @mri_comment_field(i8* %8)
  store i8* %19, i8** %7, align 8
  br label %20

20:                                               ; preds = %18, %1
  %21 = call i64 (...) @get_absolute_expression()
  store i64 %21, i64* %3, align 8
  %22 = call i32 (...) @SKIP_WHITESPACE()
  %23 = load i8*, i8** @input_line_pointer, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 44
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 (i32, ...) @as_bad(i32 %28)
  %30 = call i32 (...) @ignore_rest_of_line()
  %31 = load i64, i64* @flag_mri, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %8, align 1
  %36 = call i32 @mri_comment_end(i8* %34, i8 signext %35)
  br label %37

37:                                               ; preds = %33, %27
  store i32 1, i32* %9, align 4
  br label %124

38:                                               ; preds = %20
  %39 = load i8*, i8** @input_line_pointer, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** @input_line_pointer, align 8
  %41 = call i32 (...) @SKIP_WHITESPACE()
  %42 = load i8*, i8** @input_line_pointer, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 48
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load i8*, i8** @input_line_pointer, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @ISALPHA(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i8*, i8** @input_line_pointer, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  store i8* %55, i8** @input_line_pointer, align 8
  br label %56

56:                                               ; preds = %53, %47, %38
  %57 = load i8*, i8** @input_line_pointer, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 58
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @hex_float(i32 %63, i8* %15)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = call i32 (...) @ignore_rest_of_line()
  %69 = load i64, i64* @flag_mri, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i8*, i8** %7, align 8
  %73 = load i8, i8* %8, align 1
  %74 = call i32 @mri_comment_end(i8* %72, i8 signext %73)
  br label %75

75:                                               ; preds = %71, %67
  store i32 1, i32* %9, align 4
  br label %124

76:                                               ; preds = %62
  br label %104

77:                                               ; preds = %56
  %78 = load i32, i32* %2, align 4
  %79 = call i8* @md_atof(i32 %78, i8* %15, i32* %4)
  store i8* %79, i8** %10, align 8
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT, align 4
  %82 = icmp sle i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @know(i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = icmp sgt i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @know(i32 %87)
  %89 = load i8*, i8** %10, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %77
  %92 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 (i32, ...) @as_bad(i32 %92, i8* %93)
  %95 = call i32 (...) @ignore_rest_of_line()
  %96 = load i64, i64* @flag_mri, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i8*, i8** %7, align 8
  %100 = load i8, i8* %8, align 1
  %101 = call i32 @mri_comment_end(i8* %99, i8 signext %100)
  br label %102

102:                                              ; preds = %98, %91
  store i32 1, i32* %9, align 4
  br label %124

103:                                              ; preds = %77
  br label %104

104:                                              ; preds = %103, %76
  br label %105

105:                                              ; preds = %109, %104
  %106 = load i64, i64* %3, align 8
  %107 = add nsw i64 %106, -1
  store i64 %107, i64* %3, align 8
  %108 = icmp sge i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i32, i32* %4, align 4
  %111 = call i8* @frag_more(i32 %110)
  store i8* %111, i8** %11, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @memcpy(i8* %112, i8* %15, i32 %113)
  br label %105

115:                                              ; preds = %105
  %116 = call i32 (...) @demand_empty_rest_of_line()
  %117 = load i64, i64* @flag_mri, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i8*, i8** %7, align 8
  %121 = load i8, i8* %8, align 1
  %122 = call i32 @mri_comment_end(i8* %120, i8 signext %121)
  br label %123

123:                                              ; preds = %119, %115
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %123, %102, %75, %37
  %125 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %9, align 4
  switch i32 %126, label %128 [
    i32 0, label %127
    i32 1, label %127
  ]

127:                                              ; preds = %124, %124
  ret void

128:                                              ; preds = %124
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @mri_comment_field(i8*) #2

declare dso_local i64 @get_absolute_expression(...) #2

declare dso_local i32 @SKIP_WHITESPACE(...) #2

declare dso_local i32 @as_bad(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @ignore_rest_of_line(...) #2

declare dso_local i32 @mri_comment_end(i8*, i8 signext) #2

declare dso_local i64 @ISALPHA(i8 signext) #2

declare dso_local i32 @hex_float(i32, i8*) #2

declare dso_local i8* @md_atof(i32, i8*, i32*) #2

declare dso_local i32 @know(i32) #2

declare dso_local i8* @frag_more(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @demand_empty_rest_of_line(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
