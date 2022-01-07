; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_sdiff.c_interact.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_sdiff.c_interact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_filter = type { i32 }

@errno = common dso_local global i64 0, align 8
@suppress_common_lines = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.line_filter*, %struct.line_filter*, i8*, %struct.line_filter*, i8*, i32*)* @interact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interact(%struct.line_filter* %0, %struct.line_filter* %1, i8* %2, %struct.line_filter* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.line_filter*, align 8
  %9 = alloca %struct.line_filter*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.line_filter*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [256 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.line_filter* %0, %struct.line_filter** %8, align 8
  store %struct.line_filter* %1, %struct.line_filter** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.line_filter* %3, %struct.line_filter** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 1, i64* %14, align 8
  store i64 1, i64* %15, align 8
  br label %23

23:                                               ; preds = %140, %6
  %24 = load %struct.line_filter*, %struct.line_filter** %8, align 8
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %26 = call i32 @lf_snarf(%struct.line_filter* %24, i8* %25, i32 256)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %7, align 4
  br label %141

33:                                               ; preds = %23
  %34 = call i32 (...) @checksigs()
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %36 = load i8, i8* %35, align 16
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 32
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = call i32 @puts(i8* %41)
  br label %140

43:                                               ; preds = %33
  store i64 0, i64* @errno, align 8
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i64 @strtoumax(i8* %45, i8** %18, i32 10)
  store i64 %46, i64* %19, align 8
  store i64 %46, i64* %20, align 8
  %47 = load i64, i64* %20, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %20, align 8
  %51 = load i64, i64* %19, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* @errno, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %18, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 44
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %53, %49, %43
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %63 = call i32 @fatal(i8* %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i8*, i8** %18, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = call i64 @strtoumax(i8* %66, i8** %18, i32 10)
  store i64 %67, i64* %19, align 8
  store i64 %67, i64* %21, align 8
  %68 = load i64, i64* %21, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %64
  %71 = load i64, i64* %21, align 8
  %72 = load i64, i64* %19, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* @errno, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load i8*, i8** %18, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77, %74, %70, %64
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %84 = call i32 @fatal(i8* %83)
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i64, i64* %20, align 8
  %87 = load i64, i64* %21, align 8
  %88 = call i64 @MAX(i64 %86, i64 %87)
  store i64 %88, i64* %22, align 8
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %90 = load i8, i8* %89, align 16
  %91 = sext i8 %90 to i32
  switch i32 %91, label %130 [
    i32 105, label %92
    i32 99, label %112
  ]

92:                                               ; preds = %85
  %93 = load i32, i32* @suppress_common_lines, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.line_filter*, %struct.line_filter** %8, align 8
  %97 = load i64, i64* %22, align 8
  %98 = call i32 @lf_skip(%struct.line_filter* %96, i64 %97)
  br label %104

99:                                               ; preds = %92
  %100 = load %struct.line_filter*, %struct.line_filter** %8, align 8
  %101 = load i64, i64* %22, align 8
  %102 = load i32*, i32** @stdout, align 8
  %103 = call i32 @lf_copy(%struct.line_filter* %100, i64 %101, i32* %102)
  br label %104

104:                                              ; preds = %99, %95
  %105 = load %struct.line_filter*, %struct.line_filter** %9, align 8
  %106 = load i64, i64* %20, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = call i32 @lf_copy(%struct.line_filter* %105, i64 %106, i32* %107)
  %109 = load %struct.line_filter*, %struct.line_filter** %11, align 8
  %110 = load i64, i64* %21, align 8
  %111 = call i32 @lf_skip(%struct.line_filter* %109, i64 %110)
  br label %133

112:                                              ; preds = %85
  %113 = load %struct.line_filter*, %struct.line_filter** %8, align 8
  %114 = load i64, i64* %22, align 8
  %115 = load i32*, i32** @stdout, align 8
  %116 = call i32 @lf_copy(%struct.line_filter* %113, i64 %114, i32* %115)
  %117 = load %struct.line_filter*, %struct.line_filter** %9, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %20, align 8
  %121 = load %struct.line_filter*, %struct.line_filter** %11, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = load i64, i64* %15, align 8
  %124 = load i64, i64* %21, align 8
  %125 = load i32*, i32** %13, align 8
  %126 = call i32 @edit(%struct.line_filter* %117, i8* %118, i64 %119, i64 %120, %struct.line_filter* %121, i8* %122, i64 %123, i64 %124, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %112
  store i32 0, i32* %7, align 4
  br label %141

129:                                              ; preds = %112
  br label %133

130:                                              ; preds = %85
  %131 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %132 = call i32 @fatal(i8* %131)
  br label %133

133:                                              ; preds = %130, %129, %104
  %134 = load i64, i64* %20, align 8
  %135 = load i64, i64* %14, align 8
  %136 = add nsw i64 %135, %134
  store i64 %136, i64* %14, align 8
  %137 = load i64, i64* %21, align 8
  %138 = load i64, i64* %15, align 8
  %139 = add nsw i64 %138, %137
  store i64 %139, i64* %15, align 8
  br label %140

140:                                              ; preds = %133, %39
  br label %23

141:                                              ; preds = %128, %29
  %142 = load i32, i32* %7, align 4
  ret i32 %142
}

declare dso_local i32 @lf_snarf(%struct.line_filter*, i8*, i32) #1

declare dso_local i32 @checksigs(...) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i64 @strtoumax(i8*, i8**, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i32 @lf_skip(%struct.line_filter*, i64) #1

declare dso_local i32 @lf_copy(%struct.line_filter*, i64, i32*) #1

declare dso_local i32 @edit(%struct.line_filter*, i8*, i64, i64, %struct.line_filter*, i8*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
