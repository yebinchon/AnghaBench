; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_s_app_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_s_app_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"line numbers must be positive; line number %d rejected\00", align 1
@input_line_pointer = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"incompatible flag %i in line directive\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"unsupported flag %i in line directive\00", align 1
@is_end_of_line = common dso_local global i32* null, align 8
@listing = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s_app_line(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @get_absolute_expression()
  store i32 %11, i32* %4, align 4
  br label %18

12:                                               ; preds = %1
  %13 = call i64 @get_linefile_number(i32* %4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 (...) @ignore_rest_of_line()
  br label %105

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %10
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, -1
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 @as_warn(i32 %24, i32 %26)
  br label %95

28:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %83, label %31

31:                                               ; preds = %28
  %32 = call i32 (...) @SKIP_WHITESPACE()
  %33 = load i8*, i8** @input_line_pointer, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 34
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i8* @demand_copy_string(i32* %6)
  store i8* %38, i8** %3, align 8
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i8*, i8** %3, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %82

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %71, %42
  %44 = call i64 @get_linefile_number(i32* %7)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  switch i32 %47, label %67 [
    i32 1, label %48
    i32 2, label %48
    i32 3, label %66
    i32 4, label %66
  ]

48:                                               ; preds = %46, %46
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 1, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @as_warn(i32 %57, i32 %58)
  br label %65

60:                                               ; preds = %51, %48
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 1, %61
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %60, %56
  br label %71

66:                                               ; preds = %46, %46
  br label %71

67:                                               ; preds = %46
  %68 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @as_warn(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %66, %65
  br label %43

72:                                               ; preds = %43
  %73 = load i32*, i32** @is_end_of_line, align 8
  %74 = load i8*, i8** @input_line_pointer, align 8
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  store i8* null, i8** %3, align 8
  br label %81

81:                                               ; preds = %80, %72
  br label %82

82:                                               ; preds = %81, %39
  br label %83

83:                                               ; preds = %82, %28
  %84 = load i32, i32* %2, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i8*, i8** %3, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86, %83
  %90 = load i8*, i8** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @new_logical_line_flags(i8* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %86
  br label %95

95:                                               ; preds = %94, %23
  %96 = load i32, i32* %2, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i8*, i8** %3, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %98, %95
  %102 = call i32 (...) @demand_empty_rest_of_line()
  br label %105

103:                                              ; preds = %98
  %104 = call i32 (...) @ignore_rest_of_line()
  br label %105

105:                                              ; preds = %15, %103, %101
  ret void
}

declare dso_local i32 @get_absolute_expression(...) #1

declare dso_local i64 @get_linefile_number(i32*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i32 @as_warn(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i8* @demand_copy_string(i32*) #1

declare dso_local i32 @new_logical_line_flags(i8*, i32, i32) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
