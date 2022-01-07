; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_generic_digital_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_generic_digital_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_codec = type { i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32, i32)* }

@AC97_SPDIF_CONTROL = common dso_local global i32 0, align 4
@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@AC97_EA_SPDIF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AC97_SC_SPSR_MASK = common dso_local global i32 0, align 4
@AC97_SC_SPSR_48K = common dso_local global i32 0, align 4
@AC97_SC_SPSR_44K = common dso_local global i32 0, align 4
@AC97_SC_SPSR_32K = common dso_local global i32 0, align 4
@AC97_SC_CC_MASK = common dso_local global i32 0, align 4
@AUDIO_CCMASK = common dso_local global i32 0, align 4
@AUDIO_DIGITAL = common dso_local global i32 0, align 4
@AUDIO_PRO = common dso_local global i32 0, align 4
@AUDIO_DRS = common dso_local global i32 0, align 4
@AC97_EA_SLOT_MASK = common dso_local global i32 0, align 4
@AC97_EA_VRA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_codec*, i32, i32, i32)* @generic_digital_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_digital_control(%struct.ac97_codec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ac97_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ac97_codec* %0, %struct.ac97_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %12 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %11, i32 0, i32 0
  %13 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %12, align 8
  %14 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %15 = load i32, i32* @AC97_SPDIF_CONTROL, align 4
  %16 = call i32 %13(%struct.ac97_codec* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %18 [
    i32 0, label %19
    i32 1, label %42
    i32 2, label %48
    i32 3, label %54
  ]

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %4, %18
  %20 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %21 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %20, i32 0, i32 0
  %22 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %21, align 8
  %23 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %24 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %25 = call i32 %22(%struct.ac97_codec* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %27 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %26, i32 0, i32 1
  %28 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %27, align 8
  %29 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %30 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @AC97_EA_SPDIF, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = call i32 %28(%struct.ac97_codec* %29, i32 %30, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %148

39:                                               ; preds = %19
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %148

42:                                               ; preds = %4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @AC97_SC_SPSR_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @AC97_SC_SPSR_48K, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %10, align 4
  br label %60

48:                                               ; preds = %4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @AC97_SC_SPSR_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @AC97_SC_SPSR_44K, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %10, align 4
  br label %60

54:                                               ; preds = %4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @AC97_SC_SPSR_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @AC97_SC_SPSR_32K, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %54, %48, %42
  %61 = load i32, i32* @AC97_SC_CC_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @AUDIO_CCMASK, align 4
  %67 = and i32 %65, %66
  %68 = shl i32 %67, 6
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @AUDIO_DIGITAL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %60
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, 2
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %75, %60
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @AUDIO_PRO, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @AUDIO_DRS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, 16384
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %91, %86
  %95 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %96 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %95, i32 0, i32 1
  %97 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %96, align 8
  %98 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %99 = load i32, i32* @AC97_SPDIF_CONTROL, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 %97(%struct.ac97_codec* %98, i32 %99, i32 %100)
  %102 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %103 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %102, i32 0, i32 0
  %104 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %103, align 8
  %105 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %106 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %107 = call i32 %104(%struct.ac97_codec* %105, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* @AC97_EA_SLOT_MASK, align 4
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* @AC97_EA_VRA, align 4
  %112 = load i32, i32* @AC97_EA_SPDIF, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %119 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %118, i32 0, i32 1
  %120 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %119, align 8
  %121 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %122 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i32 %120(%struct.ac97_codec* %121, i32 %122, i32 %123)
  %125 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %126 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %125, i32 0, i32 0
  %127 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %126, align 8
  %128 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %129 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %130 = call i32 %127(%struct.ac97_codec* %128, i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = and i32 %131, 1024
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %94
  %135 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %136 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %135, i32 0, i32 1
  %137 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %136, align 8
  %138 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %139 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @AC97_EA_SPDIF, align 4
  %142 = xor i32 %141, -1
  %143 = and i32 %140, %142
  %144 = call i32 %137(%struct.ac97_codec* %138, i32 %139, i32 %143)
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %5, align 4
  br label %148

147:                                              ; preds = %94
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %147, %134, %39, %38
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
