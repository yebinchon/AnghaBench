; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_maestro3.c_snd_m3_update_hw_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_maestro3.c_snd_m3_update_hw_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32, %struct.TYPE_6__*, i32, i64, %struct.TYPE_5__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@SHADOW_MIX_REG_VOICE = common dso_local global i64 0, align 8
@HW_VOL_COUNTER_VOICE = common dso_local global i64 0, align 8
@SHADOW_MIX_REG_MASTER = common dso_local global i64 0, align 8
@HW_VOL_COUNTER_MASTER = common dso_local global i64 0, align 8
@AC97_MASTER_VOL = common dso_local global i64 0, align 8
@CODEC_DATA = common dso_local global i64 0, align 8
@CODEC_COMMAND = common dso_local global i64 0, align 8
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @snd_m3_update_hw_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_m3_update_hw_volume(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_m3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.snd_m3*
  store %struct.snd_m3* %8, %struct.snd_m3** %3, align 8
  %9 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %10 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SHADOW_MIX_REG_VOICE, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @inb(i64 %13)
  %15 = and i32 %14, 238
  store i32 %15, i32* %4, align 4
  %16 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %17 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SHADOW_MIX_REG_VOICE, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i64 136, i64 %20)
  %22 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %23 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HW_VOL_COUNTER_VOICE, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outb(i64 136, i64 %26)
  %28 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %29 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SHADOW_MIX_REG_MASTER, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outb(i64 136, i64 %32)
  %34 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %35 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HW_VOL_COUNTER_MASTER, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outb(i64 136, i64 %38)
  %40 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %41 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  br label %201

45:                                               ; preds = %1
  %46 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %47 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %46, i32 0, i32 5
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %52 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50, %45
  br label %201

56:                                               ; preds = %50
  %57 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %58 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %57, i32 0, i32 0
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %62 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %61, i32 0, i32 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @AC97_MASTER_VOL, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %4, align 4
  switch i32 %69, label %196 [
    i32 136, label %70
    i32 170, label %104
    i32 102, label %150
  ]

70:                                               ; preds = %56
  %71 = load i32, i32* %5, align 4
  %72 = xor i32 %71, 32768
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %75 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %74, i32 0, i32 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @AC97_MASTER_VOL, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %73, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %83 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CODEC_DATA, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outw(i32 %81, i64 %86)
  %88 = load i64, i64* @AC97_MASTER_VOL, align 8
  %89 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %90 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CODEC_COMMAND, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @outb(i64 %88, i64 %93)
  %95 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %96 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %99 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %100 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %99, i32 0, i32 5
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = call i32 @snd_ctl_notify(i32 %97, i32 %98, i32* %102)
  br label %196

104:                                              ; preds = %56
  %105 = load i32, i32* %5, align 4
  %106 = and i32 %105, 127
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %108, %104
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %112, 32512
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32, i32* %5, align 4
  %117 = sub nsw i32 %116, 256
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %121 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %120, i32 0, i32 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @AC97_MASTER_VOL, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32 %119, i32* %126, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %129 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @CODEC_DATA, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @outw(i32 %127, i64 %132)
  %134 = load i64, i64* @AC97_MASTER_VOL, align 8
  %135 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %136 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @CODEC_COMMAND, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @outb(i64 %134, i64 %139)
  %141 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %142 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %145 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %146 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %145, i32 0, i32 1
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = call i32 @snd_ctl_notify(i32 %143, i32 %144, i32* %148)
  br label %196

150:                                              ; preds = %56
  %151 = load i32, i32* %5, align 4
  %152 = and i32 %151, 127
  %153 = icmp slt i32 %152, 31
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %154, %150
  %158 = load i32, i32* %5, align 4
  %159 = and i32 %158, 32512
  %160 = icmp slt i32 %159, 7936
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 256
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %161, %157
  %165 = load i32, i32* %5, align 4
  %166 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %167 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %166, i32 0, i32 4
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* @AC97_MASTER_VOL, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32 %165, i32* %172, align 4
  %173 = load i32, i32* %5, align 4
  %174 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %175 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @CODEC_DATA, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @outw(i32 %173, i64 %178)
  %180 = load i64, i64* @AC97_MASTER_VOL, align 8
  %181 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %182 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @CODEC_COMMAND, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @outb(i64 %180, i64 %185)
  %187 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %188 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %191 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %192 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %191, i32 0, i32 1
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = call i32 @snd_ctl_notify(i32 %189, i32 %190, i32* %194)
  br label %196

196:                                              ; preds = %56, %164, %118, %70
  %197 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %198 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %197, i32 0, i32 0
  %199 = load i64, i64* %6, align 8
  %200 = call i32 @spin_unlock_irqrestore(i32* %198, i64 %199)
  br label %201

201:                                              ; preds = %196, %55, %44
  ret void
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
