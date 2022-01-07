; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_lalr.c_traverse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_lalr.c_traverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VERTICES = common dso_local global i32* null, align 8
@top = common dso_local global i64 0, align 8
@INDEX = common dso_local global i64* null, align 8
@F = common dso_local global i32* null, align 8
@tokensetsize = common dso_local global i32 0, align 4
@R = common dso_local global i64** null, align 8
@infinity = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @traverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @traverse(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = trunc i64 %11 to i32
  %13 = load i32*, i32** @VERTICES, align 8
  %14 = load i64, i64* @top, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* @top, align 8
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 %12, i32* %16, align 4
  %17 = load i64, i64* @top, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64*, i64** @INDEX, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 %17, i64* %21, align 8
  %22 = load i32*, i32** @F, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @tokensetsize, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @tokensetsize, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %5, align 8
  %32 = load i64**, i64*** @R, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64*, i64** %32, i64 %34
  %36 = load i64*, i64** %35, align 8
  store i64* %36, i64** %7, align 8
  %37 = load i64*, i64** %7, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %99

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %97, %39
  %41 = load i64*, i64** %7, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %7, align 8
  %43 = load i64, i64* %41, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %98

46:                                               ; preds = %40
  %47 = load i64*, i64** @INDEX, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  call void @traverse(i32 %54)
  br label %55

55:                                               ; preds = %53, %46
  %56 = load i64*, i64** @INDEX, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** @INDEX, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %60, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %55
  %68 = load i64*, i64** @INDEX, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** @INDEX, align 8
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %72, i64* %76, align 8
  br label %77

77:                                               ; preds = %67, %55
  %78 = load i32*, i32** %9, align 8
  store i32* %78, i32** %3, align 8
  %79 = load i32*, i32** @F, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @tokensetsize, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  store i32* %84, i32** %4, align 8
  br label %85

85:                                               ; preds = %89, %77
  %86 = load i32*, i32** %3, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = icmp ult i32* %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %4, align 8
  %92 = load i32, i32* %90, align 4
  %93 = load i32*, i32** %3, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %3, align 8
  %95 = load i32, i32* %93, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %93, align 4
  br label %85

97:                                               ; preds = %85
  br label %40

98:                                               ; preds = %40
  br label %99

99:                                               ; preds = %98, %1
  %100 = load i64*, i64** @INDEX, align 8
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %143

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %141, %107
  %109 = load i32*, i32** @VERTICES, align 8
  %110 = load i64, i64* @top, align 8
  %111 = add i64 %110, -1
  store i64 %111, i64* @top, align 8
  %112 = getelementptr inbounds i32, i32* %109, i64 %110
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %6, align 4
  %114 = load i64, i64* @infinity, align 8
  %115 = load i64*, i64** @INDEX, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  store i64 %114, i64* %118, align 8
  %119 = load i32, i32* %2, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %108
  br label %142

123:                                              ; preds = %108
  %124 = load i32*, i32** %9, align 8
  store i32* %124, i32** %3, align 8
  %125 = load i32*, i32** @F, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @tokensetsize, align 4
  %128 = mul nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  store i32* %130, i32** %4, align 8
  br label %131

131:                                              ; preds = %135, %123
  %132 = load i32*, i32** %3, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = icmp ult i32* %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load i32*, i32** %3, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %3, align 8
  %138 = load i32, i32* %136, align 4
  %139 = load i32*, i32** %4, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %4, align 8
  store i32 %138, i32* %139, align 4
  br label %131

141:                                              ; preds = %131
  br label %108

142:                                              ; preds = %122
  br label %143

143:                                              ; preds = %142, %99
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
