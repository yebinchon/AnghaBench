; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_spdif_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_spdif_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_trident = type { i64, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TRIDENT_DEVICE_ID_SI7018 = common dso_local global i64 0, align 8
@IEC958_AES0_PROFESSIONAL = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_FS = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_FS_48000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_48000 = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_FS_44100 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_44100 = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_FS_32000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_32000 = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_trident_spdif_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_spdif_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_trident*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_trident* %11, %struct.snd_trident** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %14 = call i32 @snd_trident_allocate_pcm_mem(%struct.snd_pcm_substream* %12, %struct.snd_pcm_hw_params* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %152

19:                                               ; preds = %2
  %20 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %21 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %28 = call i32 @snd_trident_allocate_evoice(%struct.snd_pcm_substream* %26, %struct.snd_pcm_hw_params* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %152

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %19
  %35 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %36 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %35, i32 0, i32 6
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %39 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %34
  %46 = load i32, i32* @IEC958_AES0_PRO_FS, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %49 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %60

52:                                               ; preds = %34
  %53 = load i32, i32* @IEC958_AES3_CON_FS, align 4
  %54 = shl i32 %53, 24
  %55 = xor i32 %54, -1
  %56 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %57 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %52, %45
  %61 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %62 = call i32 @params_rate(%struct.snd_pcm_hw_params* %61)
  %63 = icmp sge i32 %62, 48000
  br i1 %63, label %64, label %84

64:                                               ; preds = %60
  %65 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %66 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %65, i32 0, i32 2
  store i32 60, i32* %66, align 4
  %67 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %68 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @IEC958_AES0_PRO_FS_48000, align 4
  br label %78

75:                                               ; preds = %64
  %76 = load i32, i32* @IEC958_AES3_CON_FS_48000, align 4
  %77 = shl i32 %76, 24
  br label %78

78:                                               ; preds = %75, %73
  %79 = phi i32 [ %74, %73 ], [ %77, %75 ]
  %80 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %81 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %129

84:                                               ; preds = %60
  %85 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %86 = call i32 @params_rate(%struct.snd_pcm_hw_params* %85)
  %87 = icmp sge i32 %86, 44100
  br i1 %87, label %88, label %108

88:                                               ; preds = %84
  %89 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %90 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %89, i32 0, i32 2
  store i32 62, i32* %90, align 4
  %91 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %92 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* @IEC958_AES0_PRO_FS_44100, align 4
  br label %102

99:                                               ; preds = %88
  %100 = load i32, i32* @IEC958_AES3_CON_FS_44100, align 4
  %101 = shl i32 %100, 24
  br label %102

102:                                              ; preds = %99, %97
  %103 = phi i32 [ %98, %97 ], [ %101, %99 ]
  %104 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %105 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %128

108:                                              ; preds = %84
  %109 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %110 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %109, i32 0, i32 2
  store i32 61, i32* %110, align 4
  %111 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %112 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* @IEC958_AES0_PRO_FS_32000, align 4
  br label %122

119:                                              ; preds = %108
  %120 = load i32, i32* @IEC958_AES3_CON_FS_32000, align 4
  %121 = shl i32 %120, 24
  br label %122

122:                                              ; preds = %119, %117
  %123 = phi i32 [ %118, %117 ], [ %121, %119 ]
  %124 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %125 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %102
  br label %129

129:                                              ; preds = %128, %78
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %132 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %130, %133
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %8, align 4
  %136 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %137 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %136, i32 0, i32 6
  %138 = call i32 @spin_unlock_irq(i32* %137)
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %129
  %142 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %143 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %146 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %147 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %146, i32 0, i32 4
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = call i32 @snd_ctl_notify(i32 %144, i32 %145, i32* %149)
  br label %151

151:                                              ; preds = %141, %129
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %151, %31, %17
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_trident_allocate_pcm_mem(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_trident_allocate_evoice(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
