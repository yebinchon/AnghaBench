; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_tas.c_tas_reset_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_tas.c_tas_reset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tas = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*)* }

@TAS_MCS_SCLK64 = common dso_local global i32 0, align 4
@TAS_MCS_SPORT_MODE_I2S = common dso_local global i32 0, align 4
@TAS_MCS_SPORT_WL_24BIT = common dso_local global i32 0, align 4
@TAS_REG_MCS = common dso_local global i32 0, align 4
@TAS_ACR_ANALOG_PDOWN = common dso_local global i32 0, align 4
@TAS_REG_ACR = common dso_local global i32 0, align 4
@TAS_REG_MCS2 = common dso_local global i32 0, align 4
@TAS3004_TREBLE_ZERO = common dso_local global i32 0, align 4
@TAS3004_BASS_ZERO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tas*)* @tas_reset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas_reset_init(%struct.tas* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tas*, align 8
  %4 = alloca i32, align 4
  store %struct.tas* %0, %struct.tas** %3, align 8
  %5 = load %struct.tas*, %struct.tas** %3, align 8
  %6 = getelementptr inbounds %struct.tas, %struct.tas* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %11, align 8
  %13 = load %struct.tas*, %struct.tas** %3, align 8
  %14 = getelementptr inbounds %struct.tas, %struct.tas* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = call i32 %12(%struct.TYPE_10__* %16)
  %18 = call i32 @msleep(i32 5)
  %19 = load %struct.tas*, %struct.tas** %3, align 8
  %20 = getelementptr inbounds %struct.tas, %struct.tas* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %25, align 8
  %27 = load %struct.tas*, %struct.tas** %3, align 8
  %28 = getelementptr inbounds %struct.tas, %struct.tas* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = call i32 %26(%struct.TYPE_10__* %30, i32 0)
  %32 = call i32 @msleep(i32 5)
  %33 = load %struct.tas*, %struct.tas** %3, align 8
  %34 = getelementptr inbounds %struct.tas, %struct.tas* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %39, align 8
  %41 = load %struct.tas*, %struct.tas** %3, align 8
  %42 = getelementptr inbounds %struct.tas, %struct.tas* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = call i32 %40(%struct.TYPE_10__* %44, i32 1)
  %46 = call i32 @msleep(i32 20)
  %47 = load %struct.tas*, %struct.tas** %3, align 8
  %48 = getelementptr inbounds %struct.tas, %struct.tas* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %53, align 8
  %55 = load %struct.tas*, %struct.tas** %3, align 8
  %56 = getelementptr inbounds %struct.tas, %struct.tas* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = call i32 %54(%struct.TYPE_10__* %58, i32 0)
  %60 = call i32 @msleep(i32 10)
  %61 = load %struct.tas*, %struct.tas** %3, align 8
  %62 = getelementptr inbounds %struct.tas, %struct.tas* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %67, align 8
  %69 = load %struct.tas*, %struct.tas** %3, align 8
  %70 = getelementptr inbounds %struct.tas, %struct.tas* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = call i32 %68(%struct.TYPE_10__* %72)
  %74 = load i32, i32* @TAS_MCS_SCLK64, align 4
  %75 = load i32, i32* @TAS_MCS_SPORT_MODE_I2S, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @TAS_MCS_SPORT_WL_24BIT, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %4, align 4
  %79 = load %struct.tas*, %struct.tas** %3, align 8
  %80 = load i32, i32* @TAS_REG_MCS, align 4
  %81 = call i64 @tas_write_reg(%struct.tas* %79, i32 %80, i32 1, i32* %4)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %1
  br label %130

84:                                               ; preds = %1
  %85 = load i32, i32* @TAS_ACR_ANALOG_PDOWN, align 4
  %86 = load %struct.tas*, %struct.tas** %3, align 8
  %87 = getelementptr inbounds %struct.tas, %struct.tas* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.tas*, %struct.tas** %3, align 8
  %91 = load i32, i32* @TAS_REG_ACR, align 4
  %92 = load %struct.tas*, %struct.tas** %3, align 8
  %93 = getelementptr inbounds %struct.tas, %struct.tas* %92, i32 0, i32 0
  %94 = call i64 @tas_write_reg(%struct.tas* %90, i32 %91, i32 1, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %130

97:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  %98 = load %struct.tas*, %struct.tas** %3, align 8
  %99 = load i32, i32* @TAS_REG_MCS2, align 4
  %100 = call i64 @tas_write_reg(%struct.tas* %98, i32 %99, i32 1, i32* %4)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %130

103:                                              ; preds = %97
  %104 = load %struct.tas*, %struct.tas** %3, align 8
  %105 = call i32 @tas3004_set_drc(%struct.tas* %104)
  %106 = load i32, i32* @TAS3004_TREBLE_ZERO, align 4
  %107 = load %struct.tas*, %struct.tas** %3, align 8
  %108 = getelementptr inbounds %struct.tas, %struct.tas* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @TAS3004_BASS_ZERO, align 4
  %110 = load %struct.tas*, %struct.tas** %3, align 8
  %111 = getelementptr inbounds %struct.tas, %struct.tas* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.tas*, %struct.tas** %3, align 8
  %113 = call i32 @tas_set_treble(%struct.tas* %112)
  %114 = load %struct.tas*, %struct.tas** %3, align 8
  %115 = call i32 @tas_set_bass(%struct.tas* %114)
  %116 = load i32, i32* @TAS_ACR_ANALOG_PDOWN, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.tas*, %struct.tas** %3, align 8
  %119 = getelementptr inbounds %struct.tas, %struct.tas* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.tas*, %struct.tas** %3, align 8
  %123 = load i32, i32* @TAS_REG_ACR, align 4
  %124 = load %struct.tas*, %struct.tas** %3, align 8
  %125 = getelementptr inbounds %struct.tas, %struct.tas* %124, i32 0, i32 0
  %126 = call i64 @tas_write_reg(%struct.tas* %122, i32 %123, i32 1, i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %103
  br label %130

129:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %133

130:                                              ; preds = %128, %102, %96, %83
  %131 = load i32, i32* @ENODEV, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %130, %129
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @tas_write_reg(%struct.tas*, i32, i32, i32*) #1

declare dso_local i32 @tas3004_set_drc(%struct.tas*) #1

declare dso_local i32 @tas_set_treble(%struct.tas*) #1

declare dso_local i32 @tas_set_bass(%struct.tas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
