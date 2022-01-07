; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_strnatcmp.c_strnatcmp0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_strnatcmp.c_strnatcmp0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @strnatcmp0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strnatcmp0(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %3, %128
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %10, align 1
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %11, align 1
  br label %25

25:                                               ; preds = %29, %14
  %26 = load i8, i8* %10, align 1
  %27 = call i64 @apr_isspace(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %10, align 1
  br label %25

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i8, i8* %11, align 1
  %39 = call i64 @apr_isspace(i8 signext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %11, align 1
  br label %37

48:                                               ; preds = %37
  %49 = load i8, i8* %10, align 1
  %50 = call i64 @apr_isdigit(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %98

52:                                               ; preds = %48
  %53 = load i8, i8* %11, align 1
  %54 = call i64 @apr_isdigit(i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %98

56:                                               ; preds = %52
  %57 = load i8, i8* %10, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 48
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i8, i8* %11, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 48
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i1 [ true, %56 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = call i32 @compare_left(i8* %73, i8* %77)
  store i32 %78, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %4, align 4
  br label %133

82:                                               ; preds = %69
  br label %97

83:                                               ; preds = %64
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = call i32 @compare_right(i8* %87, i8* %91)
  store i32 %92, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %4, align 4
  br label %133

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %82
  br label %98

98:                                               ; preds = %97, %52, %48
  %99 = load i8, i8* %10, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load i8, i8* %11, align 1
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %133

105:                                              ; preds = %101, %98
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i8, i8* %10, align 1
  %110 = call signext i8 @apr_toupper(i8 signext %109)
  store i8 %110, i8* %10, align 1
  %111 = load i8, i8* %11, align 1
  %112 = call signext i8 @apr_toupper(i8 signext %111)
  store i8 %112, i8* %11, align 1
  br label %113

113:                                              ; preds = %108, %105
  %114 = load i8, i8* %10, align 1
  %115 = sext i8 %114 to i32
  %116 = load i8, i8* %11, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i32 -1, i32* %4, align 4
  br label %133

120:                                              ; preds = %113
  %121 = load i8, i8* %10, align 1
  %122 = sext i8 %121 to i32
  %123 = load i8, i8* %11, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sgt i32 %122, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 1, i32* %4, align 4
  br label %133

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %14

133:                                              ; preds = %126, %119, %104, %94, %80
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i64 @apr_isspace(i8 signext) #1

declare dso_local i64 @apr_isdigit(i8 signext) #1

declare dso_local i32 @compare_left(i8*, i8*) #1

declare dso_local i32 @compare_right(i8*, i8*) #1

declare dso_local signext i8 @apr_toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
