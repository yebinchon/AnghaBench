; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_process_diff_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_process_diff_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_block = type { i32** }

@RANGE_START = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@RANGE_END = common dso_local global i64 0, align 8
@ADD = common dso_local global i32 0, align 4
@CHANGE = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.diff_block*)* @process_diff_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_diff_control(i8** %0, %struct.diff_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.diff_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store %struct.diff_block* %1, %struct.diff_block** %5, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i8* @skipwhite(i8* %10)
  %12 = load %struct.diff_block*, %struct.diff_block** %5, align 8
  %13 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %12, i32 0, i32 0
  %14 = load i32**, i32*** %13, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @RANGE_START, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = call i8* @readnum(i8* %11, i32* %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ERROR, align 4
  store i32 %23, i32* %3, align 4
  br label %139

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @skipwhite(i8* %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 44
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load %struct.diff_block*, %struct.diff_block** %5, align 8
  %35 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @RANGE_END, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call i8* @readnum(i8* %33, i32* %40)
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %31
  %45 = load i32, i32* @ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %139

46:                                               ; preds = %31
  br label %63

47:                                               ; preds = %24
  %48 = load %struct.diff_block*, %struct.diff_block** %5, align 8
  %49 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @RANGE_START, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.diff_block*, %struct.diff_block** %5, align 8
  %57 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %56, i32 0, i32 0
  %58 = load i32**, i32*** %57, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @RANGE_END, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %55, i32* %62, align 4
  br label %63

63:                                               ; preds = %47, %46
  %64 = load i8*, i8** %6, align 8
  %65 = call i8* @skipwhite(i8* %64)
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  switch i32 %68, label %75 [
    i32 97, label %69
    i32 99, label %71
    i32 100, label %73
  ]

69:                                               ; preds = %63
  %70 = load i32, i32* @ADD, align 4
  store i32 %70, i32* %7, align 4
  br label %77

71:                                               ; preds = %63
  %72 = load i32, i32* @CHANGE, align 4
  store i32 %72, i32* %7, align 4
  br label %77

73:                                               ; preds = %63
  %74 = load i32, i32* @DELETE, align 4
  store i32 %74, i32* %7, align 4
  br label %77

75:                                               ; preds = %63
  %76 = load i32, i32* @ERROR, align 4
  store i32 %76, i32* %3, align 4
  br label %139

77:                                               ; preds = %73, %71, %69
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %6, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i8* @skipwhite(i8* %80)
  %82 = load %struct.diff_block*, %struct.diff_block** %5, align 8
  %83 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %82, i32 0, i32 0
  %84 = load i32**, i32*** %83, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @RANGE_START, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = call i8* @readnum(i8* %81, i32* %88)
  store i8* %89, i8** %6, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %77
  %93 = load i32, i32* @ERROR, align 4
  store i32 %93, i32* %3, align 4
  br label %139

94:                                               ; preds = %77
  %95 = load i8*, i8** %6, align 8
  %96 = call i8* @skipwhite(i8* %95)
  store i8* %96, i8** %6, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 44
  br i1 %100, label %101, label %119

101:                                              ; preds = %94
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load %struct.diff_block*, %struct.diff_block** %5, align 8
  %105 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %104, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = getelementptr inbounds i32*, i32** %106, i64 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @RANGE_END, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = call i8* @readnum(i8* %103, i32* %110)
  store i8* %111, i8** %6, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %101
  %115 = load i32, i32* @ERROR, align 4
  store i32 %115, i32* %3, align 4
  br label %139

116:                                              ; preds = %101
  %117 = load i8*, i8** %6, align 8
  %118 = call i8* @skipwhite(i8* %117)
  store i8* %118, i8** %6, align 8
  br label %135

119:                                              ; preds = %94
  %120 = load %struct.diff_block*, %struct.diff_block** %5, align 8
  %121 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %120, i32 0, i32 0
  %122 = load i32**, i32*** %121, align 8
  %123 = getelementptr inbounds i32*, i32** %122, i64 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @RANGE_START, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.diff_block*, %struct.diff_block** %5, align 8
  %129 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %128, i32 0, i32 0
  %130 = load i32**, i32*** %129, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @RANGE_END, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32 %127, i32* %134, align 4
  br label %135

135:                                              ; preds = %119, %116
  %136 = load i8*, i8** %6, align 8
  %137 = load i8**, i8*** %4, align 8
  store i8* %136, i8** %137, align 8
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %114, %92, %75, %44, %22
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i8* @readnum(i8*, i32*) #1

declare dso_local i8* @skipwhite(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
