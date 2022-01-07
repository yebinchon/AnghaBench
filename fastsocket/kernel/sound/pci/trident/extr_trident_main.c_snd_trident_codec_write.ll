; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_codec_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_codec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, %struct.snd_trident* }
%struct.snd_trident = type { i64, i32 }

@TRIDENT_DEVICE_ID_DX = common dso_local global i64 0, align 8
@DX_ACR0_AC97_W = common dso_local global i32 0, align 4
@DX_AC97_BUSY_WRITE = common dso_local global i16 0, align 2
@TRIDENT_DEVICE_ID_NX = common dso_local global i64 0, align 8
@NX_ACR1_AC97_W = common dso_local global i32 0, align 4
@NX_AC97_BUSY_WRITE = common dso_local global i32 0, align 4
@TRIDENT_DEVICE_ID_SI7018 = common dso_local global i64 0, align 8
@SI_AC97_WRITE = common dso_local global i32 0, align 4
@SI_AC97_BUSY_WRITE = common dso_local global i16 0, align 2
@SI_AC97_AUDIO_BUSY = common dso_local global i16 0, align 2
@SI_AC97_SECONDARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_trident_codec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_trident_codec_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  %11 = alloca %struct.snd_trident*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  store i16 -1, i16* %9, align 2
  %12 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %13 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %12, i32 0, i32 1
  %14 = load %struct.snd_trident*, %struct.snd_trident** %13, align 8
  store %struct.snd_trident* %14, %struct.snd_trident** %11, align 8
  %15 = load i16, i16* %6, align 2
  %16 = zext i16 %15 to i64
  %17 = shl i64 %16, 16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load %struct.snd_trident*, %struct.snd_trident** %11, align 8
  %20 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %19, i32 0, i32 1
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.snd_trident*, %struct.snd_trident** %11, align 8
  %24 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TRIDENT_DEVICE_ID_DX, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %3
  %29 = load i32, i32* @DX_ACR0_AC97_W, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %42, %28
  %31 = load %struct.snd_trident*, %struct.snd_trident** %11, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @TRID_REG(%struct.snd_trident* %31, i32 %32)
  %34 = call zeroext i16 @inw(i32 %33)
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* @DX_AC97_BUSY_WRITE, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %46

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41
  %43 = load i16, i16* %9, align 2
  %44 = add i16 %43, -1
  store i16 %44, i16* %9, align 2
  %45 = icmp ne i16 %44, 0
  br i1 %45, label %30, label %46

46:                                               ; preds = %42, %40
  %47 = load i16, i16* @DX_AC97_BUSY_WRITE, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, i16* %5, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 %50, 255
  %52 = or i32 %48, %51
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %139

55:                                               ; preds = %3
  %56 = load %struct.snd_trident*, %struct.snd_trident** %11, align 8
  %57 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TRIDENT_DEVICE_ID_NX, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %91

61:                                               ; preds = %55
  %62 = load i32, i32* @NX_ACR1_AC97_W, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %74, %61
  %64 = load %struct.snd_trident*, %struct.snd_trident** %11, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @TRID_REG(%struct.snd_trident* %64, i32 %65)
  %67 = call zeroext i16 @inw(i32 %66)
  %68 = zext i16 %67 to i32
  %69 = load i32, i32* @NX_AC97_BUSY_WRITE, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %78

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73
  %75 = load i16, i16* %9, align 2
  %76 = add i16 %75, -1
  store i16 %76, i16* %9, align 2
  %77 = icmp ne i16 %76, 0
  br i1 %77, label %63, label %78

78:                                               ; preds = %74, %72
  %79 = load i32, i32* @NX_AC97_BUSY_WRITE, align 4
  %80 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %81 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 %82, 8
  %84 = or i32 %79, %83
  %85 = load i16, i16* %5, align 2
  %86 = zext i16 %85 to i32
  %87 = and i32 %86, 255
  %88 = or i32 %84, %87
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %138

91:                                               ; preds = %55
  %92 = load %struct.snd_trident*, %struct.snd_trident** %11, align 8
  %93 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %136

97:                                               ; preds = %91
  %98 = load i32, i32* @SI_AC97_WRITE, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %111, %97
  %100 = load %struct.snd_trident*, %struct.snd_trident** %11, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @TRID_REG(%struct.snd_trident* %100, i32 %101)
  %103 = call zeroext i16 @inw(i32 %102)
  %104 = zext i16 %103 to i32
  %105 = load i16, i16* @SI_AC97_BUSY_WRITE, align 2
  %106 = zext i16 %105 to i32
  %107 = and i32 %104, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %115

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110
  %112 = load i16, i16* %9, align 2
  %113 = add i16 %112, -1
  store i16 %113, i16* %9, align 2
  %114 = icmp ne i16 %113, 0
  br i1 %114, label %99, label %115

115:                                              ; preds = %111, %109
  %116 = load i16, i16* @SI_AC97_BUSY_WRITE, align 2
  %117 = zext i16 %116 to i32
  %118 = load i16, i16* @SI_AC97_AUDIO_BUSY, align 2
  %119 = zext i16 %118 to i32
  %120 = or i32 %117, %119
  %121 = load i16, i16* %5, align 2
  %122 = zext i16 %121 to i32
  %123 = and i32 %122, 255
  %124 = or i32 %120, %123
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %128 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %135

131:                                              ; preds = %115
  %132 = load i32, i32* @SI_AC97_SECONDARY, align 4
  %133 = load i32, i32* %8, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %131, %115
  br label %137

136:                                              ; preds = %91
  store i32 0, i32* %7, align 4
  store i16 0, i16* %9, align 2
  br label %137

137:                                              ; preds = %136, %135
  br label %138

138:                                              ; preds = %137, %78
  br label %139

139:                                              ; preds = %138, %46
  %140 = load i16, i16* %9, align 2
  %141 = zext i16 %140 to i32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load %struct.snd_trident*, %struct.snd_trident** %11, align 8
  %145 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %144, i32 0, i32 1
  %146 = load i64, i64* %10, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* %145, i64 %146)
  br label %158

148:                                              ; preds = %139
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.snd_trident*, %struct.snd_trident** %11, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @TRID_REG(%struct.snd_trident* %150, i32 %151)
  %153 = call i32 @outl(i32 %149, i32 %152)
  %154 = load %struct.snd_trident*, %struct.snd_trident** %11, align 8
  %155 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %154, i32 0, i32 1
  %156 = load i64, i64* %10, align 8
  %157 = call i32 @spin_unlock_irqrestore(i32* %155, i64 %156)
  br label %158

158:                                              ; preds = %148, %143
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i16 @inw(i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
