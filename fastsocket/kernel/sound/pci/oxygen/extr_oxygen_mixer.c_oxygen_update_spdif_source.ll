; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_mixer.c_oxygen_update_spdif_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_mixer.c_oxygen_update_spdif_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, i32, i32, i64 }

@OXYGEN_SPDIF_CONTROL = common dso_local global i32 0, align 4
@OXYGEN_PLAY_ROUTING = common dso_local global i32 0, align 4
@PCM_SPDIF = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_OUT_ENABLE = common dso_local global i32 0, align 4
@OXYGEN_PLAY_SPDIF_MASK = common dso_local global i32 0, align 4
@OXYGEN_PLAY_SPDIF_SPDIF = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_OUT_RATE_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_I2S_RATE_MASK = common dso_local global i32 0, align 4
@PCM_MULTICH = common dso_local global i32 0, align 4
@OXYGEN_PLAY_SPDIF_MULTICH_01 = common dso_local global i32 0, align 4
@OXYGEN_I2S_MULTICH_FORMAT = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_OUT_RATE_MASK = common dso_local global i32 0, align 4
@OXYGEN_RATE_44100 = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_OUTPUT_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oxygen_update_spdif_source(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %8 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %9 = load i32, i32* @OXYGEN_SPDIF_CONTROL, align 4
  %10 = call i32 @oxygen_read32(%struct.oxygen* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %12 = load i32, i32* @OXYGEN_PLAY_ROUTING, align 4
  %13 = call i32 @oxygen_read16(%struct.oxygen* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %15 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PCM_SPDIF, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @OXYGEN_SPDIF_OUT_ENABLE, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @OXYGEN_PLAY_SPDIF_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* @OXYGEN_PLAY_SPDIF_SPDIF, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @OXYGEN_SPDIF_OUT_RATE_SHIFT, align 4
  %33 = lshr i32 %31, %32
  %34 = load i32, i32* @OXYGEN_I2S_RATE_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %7, align 4
  br label %79

36:                                               ; preds = %1
  %37 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %38 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PCM_MULTICH, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %36
  %45 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %46 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @OXYGEN_PLAY_SPDIF_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load i32, i32* @OXYGEN_PLAY_SPDIF_MULTICH_01, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %6, align 4
  %56 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %57 = load i32, i32* @OXYGEN_I2S_MULTICH_FORMAT, align 4
  %58 = call i32 @oxygen_read16(%struct.oxygen* %56, i32 %57)
  %59 = load i32, i32* @OXYGEN_I2S_RATE_MASK, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @OXYGEN_SPDIF_OUT_RATE_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @OXYGEN_SPDIF_OUT_RATE_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = or i32 %64, %67
  %69 = load i32, i32* @OXYGEN_SPDIF_OUT_ENABLE, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %4, align 4
  br label %78

71:                                               ; preds = %44, %36
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @OXYGEN_SPDIF_OUT_ENABLE, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @OXYGEN_RATE_44100, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %71, %49
  br label %79

79:                                               ; preds = %78, %21
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %85 = load i32, i32* @OXYGEN_SPDIF_CONTROL, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @OXYGEN_SPDIF_OUT_ENABLE, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = call i32 @oxygen_write32(%struct.oxygen* %84, i32 %85, i32 %89)
  %91 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %92 = load i32, i32* @OXYGEN_PLAY_ROUTING, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @oxygen_write16(%struct.oxygen* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %83, %79
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @OXYGEN_SPDIF_OUT_ENABLE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %95
  %101 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %102 = load i32, i32* @OXYGEN_SPDIF_OUTPUT_BITS, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @oxygen_spdif_rate(i32 %103)
  %105 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %106 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @PCM_SPDIF, align 4
  %109 = shl i32 1, %108
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %100
  %113 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %114 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  br label %120

116:                                              ; preds = %100
  %117 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %118 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  br label %120

120:                                              ; preds = %116, %112
  %121 = phi i32 [ %115, %112 ], [ %119, %116 ]
  %122 = or i32 %104, %121
  %123 = call i32 @oxygen_write32(%struct.oxygen* %101, i32 %102, i32 %122)
  br label %124

124:                                              ; preds = %120, %95
  %125 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %126 = load i32, i32* @OXYGEN_SPDIF_CONTROL, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @oxygen_write32(%struct.oxygen* %125, i32 %126, i32 %127)
  ret void
}

declare dso_local i32 @oxygen_read32(%struct.oxygen*, i32) #1

declare dso_local i32 @oxygen_read16(%struct.oxygen*, i32) #1

declare dso_local i32 @oxygen_write32(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_write16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_spdif_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
