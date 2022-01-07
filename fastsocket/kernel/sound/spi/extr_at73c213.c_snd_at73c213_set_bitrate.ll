; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/spi/extr_at73c213.c_snd_at73c213_set_bitrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/spi/extr_at73c213.c_snd_at73c213_set_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_at73c213 = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@BITRATE_TARGET = common dso_local global i32 0, align 4
@BITRATE_MAX = common dso_local global i32 0, align 4
@BITRATE_MIN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CMR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"at73c213: supported bitrate is %lu (%lu divider)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_at73c213*)* @snd_at73c213_set_bitrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_at73c213_set_bitrate(%struct.snd_at73c213* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_at73c213*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.snd_at73c213* %0, %struct.snd_at73c213** %3, align 8
  %11 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %12 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @clk_get_rate(i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* @BITRATE_TARGET, align 4
  %19 = mul nsw i32 %18, 2
  %20 = mul nsw i32 %19, 16
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %17, %21
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* @BITRATE_MAX, align 4
  %25 = mul nsw i32 %24, 2
  %26 = mul nsw i32 %25, 16
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %23, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* @BITRATE_MIN, align 4
  %31 = mul nsw i32 %30, 2
  %32 = mul nsw i32 %31, 16
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %29, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = sub i64 %35, %36
  %38 = udiv i64 %37, 2
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  store i32 1, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  %46 = and i64 %45, -2
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %6, align 8
  %49 = mul i64 %48, 2
  %50 = mul i64 %49, 16
  %51 = udiv i64 %47, %50
  %52 = load i32, i32* @BITRATE_MIN, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %43
  %56 = load i64, i64* %6, align 8
  %57 = sub i64 %56, 2
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %6, align 8
  %60 = mul i64 %59, 2
  %61 = mul i64 %60, 16
  %62 = udiv i64 %58, %61
  %63 = load i32, i32* @BITRATE_MAX, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ugt i64 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load i32, i32* @ENXIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %155

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %43
  br label %71

71:                                               ; preds = %110, %70
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* %6, align 8
  %74 = mul i64 %73, 2
  %75 = mul i64 %74, 16
  %76 = udiv i64 %72, %75
  %77 = load i32, i32* @BITRATE_MIN, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32, i32* @ENXIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %155

83:                                               ; preds = %71
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* %6, align 8
  %86 = udiv i64 %84, %85
  %87 = mul i64 8, %86
  store i64 %87, i64* %5, align 8
  %88 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %89 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %88, i32 0, i32 3
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @clk_round_rate(i32 %92, i64 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %155

99:                                               ; preds = %83
  %100 = load i32, i32* %7, align 4
  %101 = sdiv i32 %100, 256
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %5, align 8
  %104 = udiv i64 %103, 256
  %105 = icmp eq i64 %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %117

107:                                              ; preds = %99
  %108 = load i64, i64* %6, align 8
  %109 = add i64 %108, 2
  store i64 %109, i64* %6, align 8
  br label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %71, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @ENXIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %155

117:                                              ; preds = %106
  %118 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %119 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %118, i32 0, i32 3
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @clk_set_rate(i32 %122, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %155

129:                                              ; preds = %117
  %130 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %131 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %130, i32 0, i32 2
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CMR, align 4
  %136 = load i64, i64* %6, align 8
  %137 = udiv i64 %136, 2
  %138 = call i32 @ssc_writel(i32 %134, i32 %135, i64 %137)
  %139 = load i64, i64* %4, align 8
  %140 = load i64, i64* %6, align 8
  %141 = mul i64 %140, 16
  %142 = mul i64 %141, 2
  %143 = udiv i64 %139, %142
  %144 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %145 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %147 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %146, i32 0, i32 1
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %151 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %6, align 8
  %154 = call i32 @dev_info(i32* %149, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %152, i64 %153)
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %129, %127, %114, %97, %80, %66
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @clk_round_rate(i32, i64) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @ssc_writel(i32, i32, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
