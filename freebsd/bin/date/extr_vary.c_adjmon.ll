; ModuleID = '/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_adjmon.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_adjmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*, i8, i32, i32, i32)* @adjmon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjmon(%struct.tm* %0, i8 signext %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %7, align 8
  store i8 %1, i8* %8, align 1
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %169

16:                                               ; preds = %5
  %17 = load i8, i8* %8, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %134 [
    i32 43, label %19
    i32 45, label %76
  ]

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.tm*, %struct.tm** %7, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.tm*, %struct.tm** %7, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 11, %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %42

35:                                               ; preds = %22
  %36 = load %struct.tm*, %struct.tm** %7, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %35, %28
  br label %43

43:                                               ; preds = %42, %19
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %43
  %47 = load %struct.tm*, %struct.tm** %7, align 8
  %48 = load %struct.tm*, %struct.tm** %7, align 8
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %50, %51
  %53 = sdiv i32 %52, 12
  %54 = call i32 @adjyear(%struct.tm* %47, i8 signext 43, i32 %53, i32 0)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %169

57:                                               ; preds = %46
  %58 = load i32, i32* %9, align 4
  %59 = srem i32 %58, 12
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.tm*, %struct.tm** %7, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.tm*, %struct.tm** %7, align 8
  %66 = getelementptr inbounds %struct.tm, %struct.tm* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 11
  br i1 %68, label %69, label %74

69:                                               ; preds = %57
  %70 = load %struct.tm*, %struct.tm** %7, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 12
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69, %57
  br label %75

75:                                               ; preds = %74, %43
  br label %146

76:                                               ; preds = %16
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load %struct.tm*, %struct.tm** %7, align 8
  %83 = getelementptr inbounds %struct.tm, %struct.tm* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load i32, i32* %9, align 4
  %88 = sub nsw i32 13, %87
  %89 = load %struct.tm*, %struct.tm** %7, align 8
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %88, %91
  store i32 %92, i32* %9, align 4
  br label %100

93:                                               ; preds = %79
  %94 = load %struct.tm*, %struct.tm** %7, align 8
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sub nsw i32 %96, %97
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %93, %86
  br label %101

101:                                              ; preds = %100, %76
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %133

104:                                              ; preds = %101
  %105 = load %struct.tm*, %struct.tm** %7, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sdiv i32 %106, 12
  %108 = call i32 @adjyear(%struct.tm* %105, i8 signext 45, i32 %107, i32 0)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  store i32 0, i32* %6, align 4
  br label %169

111:                                              ; preds = %104
  %112 = load i32, i32* %9, align 4
  %113 = srem i32 %112, 12
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.tm*, %struct.tm** %7, align 8
  %116 = getelementptr inbounds %struct.tm, %struct.tm* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %114, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load %struct.tm*, %struct.tm** %7, align 8
  %121 = call i32 @adjyear(%struct.tm* %120, i8 signext 45, i32 1, i32 0)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  store i32 0, i32* %6, align 4
  br label %169

124:                                              ; preds = %119
  %125 = load i32, i32* %9, align 4
  %126 = sub nsw i32 %125, 12
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %124, %111
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.tm*, %struct.tm** %7, align 8
  %130 = getelementptr inbounds %struct.tm, %struct.tm* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %101
  br label %146

134:                                              ; preds = %16
  %135 = load i32, i32* %9, align 4
  %136 = icmp sgt i32 %135, 12
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %138, 1
  br i1 %139, label %140, label %141

140:                                              ; preds = %137, %134
  store i32 0, i32* %6, align 4
  br label %169

141:                                              ; preds = %137
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %9, align 4
  %144 = load %struct.tm*, %struct.tm** %7, align 8
  %145 = getelementptr inbounds %struct.tm, %struct.tm* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %141, %133, %75
  %147 = load %struct.tm*, %struct.tm** %7, align 8
  %148 = call i32 @daysinmonth(%struct.tm* %147)
  store i32 %148, i32* %12, align 4
  %149 = load %struct.tm*, %struct.tm** %7, align 8
  %150 = getelementptr inbounds %struct.tm, %struct.tm* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %146
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.tm*, %struct.tm** %7, align 8
  %157 = getelementptr inbounds %struct.tm, %struct.tm* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %154, %146
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load %struct.tm*, %struct.tm** %7, align 8
  %163 = load i8, i8* %8, align 1
  %164 = call i32 @domktime(%struct.tm* %162, i8 signext %163)
  %165 = icmp ne i32 %164, -1
  br label %166

166:                                              ; preds = %161, %158
  %167 = phi i1 [ true, %158 ], [ %165, %161 ]
  %168 = zext i1 %167 to i32
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %166, %140, %123, %110, %56, %15
  %170 = load i32, i32* %6, align 4
  ret i32 %170
}

declare dso_local i32 @adjyear(%struct.tm*, i8 signext, i32, i32) #1

declare dso_local i32 @daysinmonth(%struct.tm*) #1

declare dso_local i32 @domktime(%struct.tm*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
