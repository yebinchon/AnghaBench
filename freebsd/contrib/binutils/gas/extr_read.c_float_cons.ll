; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_float_cons.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_float_cons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT = common dso_local global i32 0, align 4
@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"bad floating literal: %s\00", align 1
@need_pass_2 = common dso_local global i32 0, align 4
@O_constant = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @float_cons(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = call i64 (...) @is_it_end_of_statement()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (...) @demand_empty_rest_of_line()
  store i32 1, i32* %8, align 4
  br label %98

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %88, %18
  %20 = call i32 (...) @SKIP_WHITESPACE()
  %21 = load i8*, i8** @input_line_pointer, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 48
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load i8*, i8** @input_line_pointer, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @ISALPHA(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** @input_line_pointer, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %34, i8** @input_line_pointer, align 8
  br label %35

35:                                               ; preds = %32, %26, %19
  %36 = load i8*, i8** @input_line_pointer, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 58
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load i8*, i8** @input_line_pointer, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** @input_line_pointer, align 8
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @hex_float(i32 %44, i8* %13)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 (...) @ignore_rest_of_line()
  store i32 1, i32* %8, align 4
  br label %98

50:                                               ; preds = %41
  br label %71

51:                                               ; preds = %35
  %52 = load i32, i32* %2, align 4
  %53 = call i8* @md_atof(i32 %52, i8* %13, i32* %4)
  store i8* %53, i8** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT, align 4
  %56 = icmp sle i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @know(i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = icmp sgt i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @know(i32 %61)
  %63 = load i8*, i8** %5, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %51
  %66 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @as_bad(i32 %66, i8* %67)
  %69 = call i32 (...) @ignore_rest_of_line()
  store i32 1, i32* %8, align 4
  br label %98

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70, %50
  %72 = load i32, i32* @need_pass_2, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %71
  store i32 1, i32* %9, align 4
  br label %75

75:                                               ; preds = %79, %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %9, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = call i8* @frag_more(i32 %80)
  store i8* %81, i8** %3, align 8
  %82 = load i8*, i8** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @memcpy(i8* %82, i8* %13, i32 %83)
  br label %75

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %71
  %87 = call i32 (...) @SKIP_WHITESPACE()
  br label %88

88:                                               ; preds = %86
  %89 = load i8*, i8** @input_line_pointer, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** @input_line_pointer, align 8
  %91 = load i8, i8* %89, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 44
  br i1 %93, label %19, label %94

94:                                               ; preds = %88
  %95 = load i8*, i8** @input_line_pointer, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 -1
  store i8* %96, i8** @input_line_pointer, align 8
  %97 = call i32 (...) @demand_empty_rest_of_line()
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %94, %65, %48, %16
  %99 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %8, align 4
  switch i32 %100, label %102 [
    i32 0, label %101
    i32 1, label %101
  ]

101:                                              ; preds = %98, %98
  ret void

102:                                              ; preds = %98
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_it_end_of_statement(...) #2

declare dso_local i32 @demand_empty_rest_of_line(...) #2

declare dso_local i32 @SKIP_WHITESPACE(...) #2

declare dso_local i64 @ISALPHA(i8 signext) #2

declare dso_local i32 @hex_float(i32, i8*) #2

declare dso_local i32 @ignore_rest_of_line(...) #2

declare dso_local i8* @md_atof(i32, i8*, i32*) #2

declare dso_local i32 @know(i32) #2

declare dso_local i32 @as_bad(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @frag_more(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
