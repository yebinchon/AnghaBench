; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_s_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_s_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALIGN_LIMIT = common dso_local global i32 0, align 4
@flag_mri = common dso_local global i64 0, align 8
@is_end_of_line = common dso_local global i64* null, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"alignment not a power of 2\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"alignment too large: %u assumed\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"expected fill pattern missing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @s_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_align(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca [16 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %16 = load i32, i32* @ALIGN_LIMIT, align 4
  store i32 %16, i32* %5, align 4
  store i8* null, i8** %7, align 8
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  %17 = load i64, i64* @flag_mri, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i8* @mri_comment_field(i8* %8)
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i64*, i64** @is_end_of_line, align 8
  %23 = load i8*, i8** @input_line_pointer, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %32
  br label %40

36:                                               ; preds = %21
  %37 = call i8* (...) @get_absolute_expression()
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = call i32 (...) @SKIP_WHITESPACE()
  br label %40

40:                                               ; preds = %36, %35
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %52, %46
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = lshr i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %12, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %47

57:                                               ; preds = %47
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %62 = call i32 @as_bad(i32 %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %43
  br label %66

66:                                               ; preds = %65, %40
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %6, align 4
  %72 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i32, ...) @as_warn(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %66
  %76 = load i8*, i8** @input_line_pointer, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 44
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %105

81:                                               ; preds = %75
  %82 = load i8*, i8** @input_line_pointer, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** @input_line_pointer, align 8
  %84 = load i8*, i8** @input_line_pointer, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 44
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 0, i32* %11, align 4
  br label %93

89:                                               ; preds = %81
  %90 = call i8* (...) @get_absolute_expression()
  %91 = ptrtoint i8* %90 to i8
  store i8 %91, i8* %9, align 1
  %92 = call i32 (...) @SKIP_WHITESPACE()
  store i32 1, i32* %11, align 4
  br label %93

93:                                               ; preds = %89, %88
  %94 = load i8*, i8** @input_line_pointer, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 44
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 0, i32* %10, align 4
  br label %104

99:                                               ; preds = %93
  %100 = load i8*, i8** @input_line_pointer, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** @input_line_pointer, align 8
  %102 = call i8* (...) @get_absolute_expression()
  %103 = ptrtoint i8* %102 to i32
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %99, %98
  br label %105

105:                                              ; preds = %104, %80
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %3, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %113 = call i32 (i32, ...) @as_warn(i32 %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @do_align(i32 %115, i8* null, i32 0, i32 %116)
  br label %151

118:                                              ; preds = %105
  %119 = load i32, i32* %3, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 1, i32* %13, align 4
  br label %125

122:                                              ; preds = %118
  %123 = load i32, i32* %3, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %122, %121
  %126 = load i32, i32* %13, align 4
  %127 = icmp sle i32 %126, 1
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i8, i8* %9, align 1
  store i8 %129, i8* %14, align 1
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @do_align(i32 %130, i8* %14, i32 %131, i32 %132)
  br label %150

134:                                              ; preds = %125
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp ugt i64 %136, 16
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = call i32 (...) @abort() #3
  unreachable

140:                                              ; preds = %134
  %141 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %142 = load i8, i8* %9, align 1
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @md_number_to_chars(i8* %141, i8 signext %142, i32 %143)
  %145 = load i32, i32* %6, align 4
  %146 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @do_align(i32 %145, i8* %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %140, %128
  br label %151

151:                                              ; preds = %150, %114
  %152 = call i32 (...) @demand_empty_rest_of_line()
  %153 = load i64, i64* @flag_mri, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i8*, i8** %7, align 8
  %157 = load i8, i8* %8, align 1
  %158 = call i32 @mri_comment_end(i8* %156, i8 signext %157)
  br label %159

159:                                              ; preds = %155, %151
  ret void
}

declare dso_local i8* @mri_comment_field(i8*) #1

declare dso_local i8* @get_absolute_expression(...) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @as_warn(i32, ...) #1

declare dso_local i32 @do_align(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @md_number_to_chars(i8*, i8 signext, i32) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

declare dso_local i32 @mri_comment_end(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
