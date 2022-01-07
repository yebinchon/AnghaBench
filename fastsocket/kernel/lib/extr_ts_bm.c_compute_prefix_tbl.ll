; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_ts_bm.c_compute_prefix_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_ts_bm.c_compute_prefix_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts_bm = type { i32*, i32, i64*, i32* }

@ASIZE = common dso_local global i32 0, align 4
@TS_IGNORECASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ts_bm*, i32)* @compute_prefix_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_prefix_tbl(%struct.ts_bm* %0, i32 %1) #0 {
  %3 = alloca %struct.ts_bm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ts_bm* %0, %struct.ts_bm** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %22, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ASIZE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %14 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %17 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %15, i32* %21, align 4
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %8

25:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %75, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %29 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %26
  %34 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %35 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %41 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %44 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %42, i64 %49
  store i32 %39, i32* %50, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @TS_IGNORECASE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %33
  %56 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %57 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %63 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %66 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @tolower(i64 %71)
  %73 = getelementptr inbounds i32, i32* %64, i64 %72
  store i32 %61, i32* %73, align 4
  br label %74

74:                                               ; preds = %55, %33
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %26

78:                                               ; preds = %26
  %79 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %80 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 1, i32* %82, align 4
  store i32 1, i32* %5, align 4
  br label %83

83:                                               ; preds = %99, %78
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %86 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %91 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %94 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  br label %99

99:                                               ; preds = %89
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %83

102:                                              ; preds = %83
  %103 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %104 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %107

107:                                              ; preds = %146, %102
  %108 = load i32, i32* %5, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %151

110:                                              ; preds = %107
  %111 = load i32, i32* %5, align 4
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %142, %110
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = sub nsw i32 1, %115
  %117 = icmp sge i32 %114, %116
  br i1 %117, label %118, label %145

118:                                              ; preds = %113
  %119 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %120 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %119, i32 0, i32 2
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i64 @subpattern(i64* %121, i32 %122, i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %118
  %128 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %129 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sub nsw i32 %130, %131
  %133 = load i32, i32* %7, align 4
  %134 = sub nsw i32 %132, %133
  %135 = load %struct.ts_bm*, %struct.ts_bm** %3, align 8
  %136 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %134, i32* %140, align 4
  br label %145

141:                                              ; preds = %118
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %6, align 4
  br label %113

145:                                              ; preds = %127, %113
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %5, align 4
  br label %107

151:                                              ; preds = %107
  ret void
}

declare dso_local i64 @tolower(i64) #1

declare dso_local i64 @subpattern(i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
