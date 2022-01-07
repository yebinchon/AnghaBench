; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timeconv.c_time_to_tm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timeconv.c_time_to_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i64, i64, i32, i64, i64, i64, i64 }

@SECS_PER_DAY = common dso_local global i64 0, align 8
@SECS_PER_HOUR = common dso_local global i64 0, align 8
@__mon_yday = common dso_local global i16** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @time_to_tm(i64 %0, i32 %1, %struct.tm* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tm* %2, %struct.tm** %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @SECS_PER_DAY, align 8
  %14 = sdiv i64 %12, %13
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @SECS_PER_DAY, align 8
  %17 = srem i64 %15, %16
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %8, align 8
  %21 = add nsw i64 %20, %19
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %25, %3
  %23 = load i64, i64* %8, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i64, i64* @SECS_PER_DAY, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %7, align 8
  br label %22

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %36, %31
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @SECS_PER_DAY, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i64, i64* @SECS_PER_DAY, align 8
  %38 = load i64, i64* %8, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %32

42:                                               ; preds = %32
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @SECS_PER_HOUR, align 8
  %45 = sdiv i64 %43, %44
  %46 = load %struct.tm*, %struct.tm** %6, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* @SECS_PER_HOUR, align 8
  %49 = load i64, i64* %8, align 8
  %50 = srem i64 %49, %48
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sdiv i64 %51, 60
  %53 = load %struct.tm*, %struct.tm** %6, align 8
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %8, align 8
  %56 = srem i64 %55, 60
  %57 = load %struct.tm*, %struct.tm** %6, align 8
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 4, %59
  %61 = srem i64 %60, 7
  %62 = trunc i64 %61 to i32
  %63 = load %struct.tm*, %struct.tm** %6, align 8
  %64 = getelementptr inbounds %struct.tm, %struct.tm* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.tm*, %struct.tm** %6, align 8
  %66 = getelementptr inbounds %struct.tm, %struct.tm* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %42
  %70 = load %struct.tm*, %struct.tm** %6, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 7
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %69, %42
  store i64 1970, i64* %9, align 8
  br label %75

75:                                               ; preds = %89, %74
  %76 = load i64, i64* %7, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i64 @__isleap(i64 %80)
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 366, i32 365
  %85 = sext i32 %84 to i64
  %86 = icmp sge i64 %79, %85
  br label %87

87:                                               ; preds = %78, %75
  %88 = phi i1 [ true, %75 ], [ %86, %78 ]
  br i1 %88, label %89, label %105

89:                                               ; preds = %87
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i64 @math_div(i64 %91, i32 365)
  %93 = add nsw i64 %90, %92
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %9, align 8
  %96 = sub nsw i64 %94, %95
  %97 = mul nsw i64 %96, 365
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i64 @leaps_between(i64 %98, i64 %99)
  %101 = add nsw i64 %97, %100
  %102 = load i64, i64* %7, align 8
  %103 = sub nsw i64 %102, %101
  store i64 %103, i64* %7, align 8
  %104 = load i64, i64* %11, align 8
  store i64 %104, i64* %9, align 8
  br label %75

105:                                              ; preds = %87
  %106 = load i64, i64* %9, align 8
  %107 = sub nsw i64 %106, 1900
  %108 = load %struct.tm*, %struct.tm** %6, align 8
  %109 = getelementptr inbounds %struct.tm, %struct.tm* %108, i32 0, i32 4
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.tm*, %struct.tm** %6, align 8
  %112 = getelementptr inbounds %struct.tm, %struct.tm* %111, i32 0, i32 5
  store i64 %110, i64* %112, align 8
  %113 = load i16**, i16*** @__mon_yday, align 8
  %114 = load i64, i64* %9, align 8
  %115 = call i64 @__isleap(i64 %114)
  %116 = getelementptr inbounds i16*, i16** %113, i64 %115
  %117 = load i16*, i16** %116, align 8
  store i16* %117, i16** %10, align 8
  store i64 11, i64* %9, align 8
  br label %118

118:                                              ; preds = %127, %105
  %119 = load i64, i64* %7, align 8
  %120 = load i16*, i16** %10, align 8
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds i16, i16* %120, i64 %121
  %123 = load i16, i16* %122, align 2
  %124 = zext i16 %123 to i64
  %125 = icmp slt i64 %119, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %9, align 8
  %129 = add nsw i64 %128, -1
  store i64 %129, i64* %9, align 8
  br label %118

130:                                              ; preds = %118
  %131 = load i16*, i16** %10, align 8
  %132 = load i64, i64* %9, align 8
  %133 = getelementptr inbounds i16, i16* %131, i64 %132
  %134 = load i16, i16* %133, align 2
  %135 = zext i16 %134 to i64
  %136 = load i64, i64* %7, align 8
  %137 = sub nsw i64 %136, %135
  store i64 %137, i64* %7, align 8
  %138 = load i64, i64* %9, align 8
  %139 = load %struct.tm*, %struct.tm** %6, align 8
  %140 = getelementptr inbounds %struct.tm, %struct.tm* %139, i32 0, i32 6
  store i64 %138, i64* %140, align 8
  %141 = load i64, i64* %7, align 8
  %142 = add nsw i64 %141, 1
  %143 = load %struct.tm*, %struct.tm** %6, align 8
  %144 = getelementptr inbounds %struct.tm, %struct.tm* %143, i32 0, i32 7
  store i64 %142, i64* %144, align 8
  ret void
}

declare dso_local i64 @__isleap(i64) #1

declare dso_local i64 @math_div(i64, i32) #1

declare dso_local i64 @leaps_between(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
