; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_report_op_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_report_op_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@undefined_section = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"undefined symbol `%s' in operation\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"invalid sections for operation on `%s' and `%s'\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"invalid section for operation on `%s'\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"undefined symbol `%s' in operation setting `%s'\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"invalid sections for operation on `%s' and `%s' setting `%s'\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"invalid section for operation on `%s' setting `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @report_op_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_op_error(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @S_GET_SEGMENT(i32* %11)
  store i64 %12, i64* %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @S_GET_SEGMENT(i32* %16)
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi i64 [ %17, %15 ], [ 0, %18 ]
  store i64 %20, i64* %10, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @expr_symbol_where(i32* %21, i8** %7, i32* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %19
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @undefined_section, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @S_GET_NAME(i32* %32)
  %34 = call i32 (i8*, i32, i32, i32, ...) @as_bad_where(i8* %29, i32 %30, i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %28, %24
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @undefined_section, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @S_GET_NAME(i32* %43)
  %45 = call i32 (i8*, i32, i32, i32, ...) @as_bad_where(i8* %40, i32 %41, i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %39, %35
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @undefined_section, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @undefined_section, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @S_GET_NAME(i32* %61)
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @S_GET_NAME(i32* %63)
  %65 = call i32 (i8*, i32, i32, i32, ...) @as_bad_where(i8* %58, i32 %59, i32 %60, i32 %62, i32 %64)
  br label %73

66:                                               ; preds = %54
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @S_GET_NAME(i32* %70)
  %72 = call i32 (i8*, i32, i32, i32, ...) @as_bad_where(i8* %67, i32 %68, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %66, %57
  br label %74

74:                                               ; preds = %73, %50, %46
  br label %126

75:                                               ; preds = %19
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @undefined_section, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @S_GET_NAME(i32* %81)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @S_GET_NAME(i32* %83)
  %85 = call i32 (i32, i32, i32, ...) @as_bad(i32 %80, i32 %82, i32 %84)
  br label %86

86:                                               ; preds = %79, %75
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @undefined_section, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @S_GET_NAME(i32* %92)
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @S_GET_NAME(i32* %94)
  %96 = call i32 (i32, i32, i32, ...) @as_bad(i32 %91, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %90, %86
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* @undefined_section, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %97
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* @undefined_section, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %101
  %106 = load i32*, i32** %6, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @S_GET_NAME(i32* %110)
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @S_GET_NAME(i32* %112)
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @S_GET_NAME(i32* %114)
  %116 = call i32 (i32, i32, i32, ...) @as_bad(i32 %109, i32 %111, i32 %113, i32 %115)
  br label %124

117:                                              ; preds = %105
  %118 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @S_GET_NAME(i32* %119)
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @S_GET_NAME(i32* %121)
  %123 = call i32 (i32, i32, i32, ...) @as_bad(i32 %118, i32 %120, i32 %122)
  br label %124

124:                                              ; preds = %117, %108
  br label %125

125:                                              ; preds = %124, %101, %97
  br label %126

126:                                              ; preds = %125, %74
  ret void
}

declare dso_local i64 @S_GET_SEGMENT(i32*) #1

declare dso_local i64 @expr_symbol_where(i32*, i8**, i32*) #1

declare dso_local i32 @as_bad_where(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @S_GET_NAME(i32*) #1

declare dso_local i32 @as_bad(i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
