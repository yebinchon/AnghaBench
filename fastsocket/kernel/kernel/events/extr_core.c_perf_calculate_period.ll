; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_calculate_period.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_calculate_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32, i32)* @perf_calculate_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_calculate_period(%struct.perf_event* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @NSEC_PER_SEC, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @fls64(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @fls64(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @fls64(i32 %25)
  store i32 %26, i32* %14, align 4
  store i32 30, i32* %15, align 4
  br label %27

27:                                               ; preds = %71, %3
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %28, %29
  %31 = icmp sgt i32 %30, 64
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = add nsw i32 %33, %34
  %36 = icmp sgt i32 %35, 64
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ]
  br i1 %38, label %39, label %72

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %13, align 4
  br label %54

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %49, %44
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = ashr i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %15, align 4
  br label %70

65:                                               ; preds = %56
  %66 = load i32, i32* %7, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70
  br label %27

72:                                               ; preds = %37
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %73, %74
  %76 = icmp sgt i32 %75, 64
  br i1 %76, label %77, label %109

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %78, %79
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %102, %77
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %82, %83
  %85 = icmp sgt i32 %84, 64
  br i1 %85, label %86, label %105

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, i32* %7, align 4
  %93 = ashr i32 %92, 1
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %12, align 4
  br label %101

96:                                               ; preds = %87
  %97 = load i32, i32* %9, align 4
  %98 = ashr i32 %97, 1
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %96, %91
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = ashr i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %81

105:                                              ; preds = %81
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %9, align 4
  %108 = mul nsw i32 %106, %107
  store i32 %108, i32* %11, align 4
  br label %141

109:                                              ; preds = %72
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %9, align 4
  %112 = mul nsw i32 %110, %111
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %134, %109
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %114, %115
  %117 = icmp sgt i32 %116, 64
  br i1 %117, label %118, label %137

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  %125 = ashr i32 %124, 1
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %13, align 4
  br label %133

128:                                              ; preds = %119
  %129 = load i32, i32* %8, align 4
  %130 = ashr i32 %129, 1
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %128, %123
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %11, align 4
  %136 = ashr i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %113

137:                                              ; preds = %113
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %8, align 4
  %140 = mul nsw i32 %138, %139
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %137, %105
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %4, align 4
  br label %150

146:                                              ; preds = %141
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @div64_u64(i32 %147, i32 %148)
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %146, %144
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @fls64(i32) #1

declare dso_local i32 @div64_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
