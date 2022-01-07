; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_mclex.c_parse_digit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_mclex.c_parse_digit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_stream_pos = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @parse_digit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_digit(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  store i32 10, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i8, i8* %2, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 48
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  store i32 8, i32* %3, align 4
  %10 = load i32*, i32** @input_stream_pos, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %22 [
    i32 120, label %13
    i32 88, label %13
    i32 111, label %16
    i32 79, label %16
    i32 98, label %19
    i32 66, label %19
  ]

13:                                               ; preds = %9, %9
  store i32 16, i32* %3, align 4
  %14 = load i32*, i32** @input_stream_pos, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** @input_stream_pos, align 8
  br label %22

16:                                               ; preds = %9, %9
  store i32 8, i32* %3, align 4
  %17 = load i32*, i32** @input_stream_pos, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** @input_stream_pos, align 8
  br label %22

19:                                               ; preds = %9, %9
  store i32 2, i32* %3, align 4
  %20 = load i32*, i32** @input_stream_pos, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** @input_stream_pos, align 8
  br label %22

22:                                               ; preds = %9, %19, %16, %13
  br label %27

23:                                               ; preds = %1
  %24 = load i8, i8* %2, align 1
  %25 = sext i8 %24 to i32
  %26 = sub nsw i32 %25, 48
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %22
  br label %28

28:                                               ; preds = %76, %27
  %29 = load i32*, i32** @input_stream_pos, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %2, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %85

35:                                               ; preds = %28
  %36 = load i8, i8* %2, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sge i32 %37, 65
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i8, i8* %2, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 70
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8, i8* %2, align 1
  %45 = sext i8 %44 to i32
  %46 = sub nsw i32 %45, 65
  %47 = add nsw i32 %46, 10
  store i32 %47, i32* %5, align 4
  br label %76

48:                                               ; preds = %39, %35
  %49 = load i8, i8* %2, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 97
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i8, i8* %2, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 102
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i8, i8* %2, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, 97
  %60 = add nsw i32 %59, 10
  store i32 %60, i32* %5, align 4
  br label %75

61:                                               ; preds = %52, %48
  %62 = load i8, i8* %2, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sge i32 %63, 48
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i8, i8* %2, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sle i32 %67, 57
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i8, i8* %2, align 1
  %71 = sext i8 %70 to i32
  %72 = sub nsw i32 %71, 48
  store i32 %72, i32* %5, align 4
  br label %74

73:                                               ; preds = %65, %61
  br label %85

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %56
  br label %76

76:                                               ; preds = %75, %43
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %4, align 4
  %79 = mul nsw i32 %78, %77
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load i32*, i32** @input_stream_pos, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** @input_stream_pos, align 8
  br label %28

85:                                               ; preds = %73, %28
  %86 = load i32*, i32** @input_stream_pos, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 85
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load i32*, i32** @input_stream_pos, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 117
  br i1 %94, label %95, label %98

95:                                               ; preds = %90, %85
  %96 = load i32*, i32** @input_stream_pos, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** @input_stream_pos, align 8
  br label %98

98:                                               ; preds = %95, %90
  %99 = load i32*, i32** @input_stream_pos, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 76
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load i32*, i32** @input_stream_pos, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 108
  br i1 %107, label %108, label %111

108:                                              ; preds = %103, %98
  %109 = load i32*, i32** @input_stream_pos, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** @input_stream_pos, align 8
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32*, i32** @input_stream_pos, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 76
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load i32*, i32** @input_stream_pos, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 108
  br i1 %120, label %121, label %124

121:                                              ; preds = %116, %111
  %122 = load i32*, i32** @input_stream_pos, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** @input_stream_pos, align 8
  br label %124

124:                                              ; preds = %121, %116
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
