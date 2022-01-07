; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_pcm.c_set_spdif_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_pcm.c_set_spdif_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i32, i64, i32, i32 }

@AC97_EI_SPDIF = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@AC97_CS_SPDIF = common dso_local global i32 0, align 4
@AC97_SC_SPSR_SHIFT = common dso_local global i32 0, align 4
@AC97_EXTENDED_STATUS = common dso_local global i16 0, align 2
@AC97_EA_SPDIF = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@AC97_CSR_SPDIF = common dso_local global i16 0, align 2
@AC97_ID_CM9739 = common dso_local global i64 0, align 8
@AC97_SC_SPSR_44K = common dso_local global i16 0, align 2
@AC97_SC_SPSR_48K = common dso_local global i16 0, align 2
@AC97_SC_SPSR_32K = common dso_local global i16 0, align 2
@AC97_SPDIF = common dso_local global i16 0, align 2
@AC97_SC_SPSR_MASK = common dso_local global i16 0, align 2
@IEC958_AES0_PROFESSIONAL = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_FS = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_FS_44100 = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_FS_48000 = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_FS_32000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_44100 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_48000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_32000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*, i16)* @set_spdif_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_spdif_rate(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @AC97_EI_SPDIF, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %174

20:                                               ; preds = %2
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AC97_CS_SPDIF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %20
  %28 = load i16, i16* %5, align 2
  %29 = zext i16 %28 to i32
  switch i32 %29, label %35 [
    i32 48000, label %30
    i32 44100, label %31
  ]

30:                                               ; preds = %27
  store i16 0, i16* %7, align 2
  br label %42

31:                                               ; preds = %27
  %32 = load i32, i32* @AC97_SC_SPSR_SHIFT, align 4
  %33 = shl i32 1, %32
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %7, align 2
  br label %42

35:                                               ; preds = %27
  %36 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %37 = load i16, i16* @AC97_EXTENDED_STATUS, align 2
  %38 = load i16, i16* @AC97_EA_SPDIF, align 2
  %39 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %36, i16 zeroext %37, i16 zeroext %38, i32 0)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %174

42:                                               ; preds = %31, %30
  %43 = load i16, i16* @AC97_CSR_SPDIF, align 2
  store i16 %43, i16* %8, align 2
  %44 = load i32, i32* @AC97_SC_SPSR_SHIFT, align 4
  %45 = shl i32 1, %44
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %9, align 2
  br label %83

47:                                               ; preds = %20
  %48 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %49 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AC97_ID_CM9739, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load i16, i16* %5, align 2
  %55 = zext i16 %54 to i32
  %56 = icmp ne i32 %55, 48000
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %59 = load i16, i16* @AC97_EXTENDED_STATUS, align 2
  %60 = load i16, i16* @AC97_EA_SPDIF, align 2
  %61 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %58, i16 zeroext %59, i16 zeroext %60, i32 0)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %174

64:                                               ; preds = %53, %47
  %65 = load i16, i16* %5, align 2
  %66 = zext i16 %65 to i32
  switch i32 %66, label %73 [
    i32 44100, label %67
    i32 48000, label %69
    i32 32000, label %71
  ]

67:                                               ; preds = %64
  %68 = load i16, i16* @AC97_SC_SPSR_44K, align 2
  store i16 %68, i16* %7, align 2
  br label %80

69:                                               ; preds = %64
  %70 = load i16, i16* @AC97_SC_SPSR_48K, align 2
  store i16 %70, i16* %7, align 2
  br label %80

71:                                               ; preds = %64
  %72 = load i16, i16* @AC97_SC_SPSR_32K, align 2
  store i16 %72, i16* %7, align 2
  br label %80

73:                                               ; preds = %64
  %74 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %75 = load i16, i16* @AC97_EXTENDED_STATUS, align 2
  %76 = load i16, i16* @AC97_EA_SPDIF, align 2
  %77 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %74, i16 zeroext %75, i16 zeroext %76, i32 0)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %174

80:                                               ; preds = %71, %69, %67
  %81 = load i16, i16* @AC97_SPDIF, align 2
  store i16 %81, i16* %8, align 2
  %82 = load i16, i16* @AC97_SC_SPSR_MASK, align 2
  store i16 %82, i16* %9, align 2
  br label %83

83:                                               ; preds = %80, %42
  %84 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %85 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %84, i32 0, i32 4
  %86 = call i32 @mutex_lock(i32* %85)
  %87 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %88 = load i16, i16* %8, align 2
  %89 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %87, i16 zeroext %88)
  %90 = zext i16 %89 to i32
  %91 = load i16, i16* %9, align 2
  %92 = zext i16 %91 to i32
  %93 = and i32 %90, %92
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %6, align 2
  %95 = load i16, i16* %6, align 2
  %96 = zext i16 %95 to i32
  %97 = load i16, i16* %7, align 2
  %98 = zext i16 %97 to i32
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %165

100:                                              ; preds = %83
  %101 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %102 = load i16, i16* @AC97_EXTENDED_STATUS, align 2
  %103 = load i16, i16* @AC97_EA_SPDIF, align 2
  %104 = call i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97* %101, i16 zeroext %102, i16 zeroext %103, i16 zeroext 0)
  %105 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %106 = load i16, i16* %8, align 2
  %107 = load i16, i16* %9, align 2
  %108 = load i16, i16* %7, align 2
  %109 = call i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97* %105, i16 zeroext %106, i16 zeroext %107, i16 zeroext %108)
  %110 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %111 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %100
  %118 = load i32, i32* @IEC958_AES0_PRO_FS, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %10, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %10, align 4
  %122 = load i16, i16* %5, align 2
  %123 = zext i16 %122 to i32
  switch i32 %123, label %136 [
    i32 44100, label %124
    i32 48000, label %128
    i32 32000, label %132
  ]

124:                                              ; preds = %117
  %125 = load i32, i32* @IEC958_AES0_PRO_FS_44100, align 4
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  br label %136

128:                                              ; preds = %117
  %129 = load i32, i32* @IEC958_AES0_PRO_FS_48000, align 4
  %130 = load i32, i32* %10, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %10, align 4
  br label %136

132:                                              ; preds = %117
  %133 = load i32, i32* @IEC958_AES0_PRO_FS_32000, align 4
  %134 = load i32, i32* %10, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %117, %132, %128, %124
  br label %161

137:                                              ; preds = %100
  %138 = load i32, i32* @IEC958_AES3_CON_FS, align 4
  %139 = shl i32 %138, 24
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %10, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %10, align 4
  %143 = load i16, i16* %5, align 2
  %144 = zext i16 %143 to i32
  switch i32 %144, label %160 [
    i32 44100, label %145
    i32 48000, label %150
    i32 32000, label %155
  ]

145:                                              ; preds = %137
  %146 = load i32, i32* @IEC958_AES3_CON_FS_44100, align 4
  %147 = shl i32 %146, 24
  %148 = load i32, i32* %10, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %10, align 4
  br label %160

150:                                              ; preds = %137
  %151 = load i32, i32* @IEC958_AES3_CON_FS_48000, align 4
  %152 = shl i32 %151, 24
  %153 = load i32, i32* %10, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %10, align 4
  br label %160

155:                                              ; preds = %137
  %156 = load i32, i32* @IEC958_AES3_CON_FS_32000, align 4
  %157 = shl i32 %156, 24
  %158 = load i32, i32* %10, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %10, align 4
  br label %160

160:                                              ; preds = %137, %155, %150, %145
  br label %161

161:                                              ; preds = %160, %136
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %164 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %161, %83
  %166 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %167 = load i16, i16* @AC97_EXTENDED_STATUS, align 2
  %168 = load i16, i16* @AC97_EA_SPDIF, align 2
  %169 = load i16, i16* @AC97_EA_SPDIF, align 2
  %170 = call i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97* %166, i16 zeroext %167, i16 zeroext %168, i16 zeroext %169)
  %171 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %172 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %171, i32 0, i32 4
  %173 = call i32 @mutex_unlock(i32* %172)
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %165, %73, %57, %35, %17
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i16 zeroext, i16 zeroext, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i16 zeroext) #1

declare dso_local i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
