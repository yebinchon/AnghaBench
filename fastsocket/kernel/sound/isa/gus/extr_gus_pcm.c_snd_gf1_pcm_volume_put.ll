; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_volume_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_gus_card = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i16, i16, i32, i32, %struct.snd_gus_voice* }
%struct.snd_gus_voice = type { i32, %struct.gus_pcm_private*, i32 }
%struct.gus_pcm_private = type { i32, i32, %struct.snd_gus_voice** }

@SNDRV_GF1_PCM_PFLG_ACTIVE = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_VOLUME_CONTROL = common dso_local global i32 0, align 4
@SNDRV_GF1_VW_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_gf1_pcm_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gf1_pcm_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_gus_card*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca %struct.gus_pcm_private*, align 8
  %13 = alloca %struct.snd_gus_voice*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = call %struct.snd_gus_card* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.snd_gus_card* %15, %struct.snd_gus_card** %5, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 127
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %9, align 2
  %25 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 127
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %10, align 2
  %34 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %35 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %34, i32 0, i32 3
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load i16, i16* %9, align 2
  %39 = zext i16 %38 to i32
  %40 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %41 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i16, i16* %42, align 8
  %44 = zext i16 %43 to i32
  %45 = icmp ne i32 %39, %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %2
  %47 = load i16, i16* %10, align 2
  %48 = zext i16 %47 to i32
  %49 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %50 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i16, i16* %51, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp ne i32 %48, %53
  br label %55

55:                                               ; preds = %46, %2
  %56 = phi i1 [ true, %2 ], [ %54, %46 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %7, align 4
  %58 = load i16, i16* %9, align 2
  %59 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %60 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i16 %58, i16* %61, align 8
  %62 = load i16, i16* %10, align 2
  %63 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %64 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i16 %62, i16* %65, align 2
  %66 = load i16, i16* %9, align 2
  %67 = zext i16 %66 to i32
  %68 = shl i32 %67, 9
  %69 = trunc i32 %68 to i16
  %70 = call i32 @snd_gf1_lvol_to_gvol_raw(i16 zeroext %69)
  %71 = shl i32 %70, 4
  %72 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %73 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load i16, i16* %10, align 2
  %76 = zext i16 %75 to i32
  %77 = shl i32 %76, 9
  %78 = trunc i32 %77 to i16
  %79 = call i32 @snd_gf1_lvol_to_gvol_raw(i16 zeroext %78)
  %80 = shl i32 %79, 4
  %81 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %82 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 8
  %84 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %85 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %84, i32 0, i32 3
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %89 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %88, i32 0, i32 0
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @spin_lock_irqsave(i32* %89, i64 %90)
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %160, %55
  %93 = load i32, i32* %8, align 4
  %94 = icmp ult i32 %93, 32
  br i1 %94, label %95, label %163

95:                                               ; preds = %92
  %96 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %97 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  %99 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %99, i64 %101
  store %struct.snd_gus_voice* %102, %struct.snd_gus_voice** %13, align 8
  %103 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %13, align 8
  %104 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %95
  br label %160

108:                                              ; preds = %95
  %109 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %13, align 8
  %110 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %109, i32 0, i32 1
  %111 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %110, align 8
  store %struct.gus_pcm_private* %111, %struct.gus_pcm_private** %12, align 8
  %112 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %12, align 8
  %113 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SNDRV_GF1_PCM_PFLG_ACTIVE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %108
  br label %160

119:                                              ; preds = %108
  %120 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %121 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %120, i32 0, i32 1
  %122 = call i32 @spin_lock(i32* %121)
  %123 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %124 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %13, align 8
  %125 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @snd_gf1_select_voice(%struct.snd_gus_card* %123, i32 %126)
  %128 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %129 = load i32, i32* @SNDRV_GF1_VB_VOLUME_CONTROL, align 4
  %130 = call i32 @snd_gf1_ctrl_stop(%struct.snd_gus_card* %128, i32 %129)
  %131 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %13, align 8
  %132 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %12, align 8
  %133 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %132, i32 0, i32 2
  %134 = load %struct.snd_gus_voice**, %struct.snd_gus_voice*** %133, align 8
  %135 = getelementptr inbounds %struct.snd_gus_voice*, %struct.snd_gus_voice** %134, i64 0
  %136 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %135, align 8
  %137 = icmp eq %struct.snd_gus_voice* %131, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %119
  %139 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %140 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  br label %148

143:                                              ; preds = %119
  %144 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %145 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  br label %148

148:                                              ; preds = %143, %138
  %149 = phi i32 [ %142, %138 ], [ %147, %143 ]
  %150 = trunc i32 %149 to i16
  store i16 %150, i16* %11, align 2
  %151 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %152 = load i32, i32* @SNDRV_GF1_VW_VOLUME, align 4
  %153 = load i16, i16* %11, align 2
  %154 = call i32 @snd_gf1_write16(%struct.snd_gus_card* %151, i32 %152, i16 zeroext %153)
  %155 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %12, align 8
  %156 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %155, i32 0, i32 1
  store i32 1, i32* %156, align 4
  %157 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %158 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %157, i32 0, i32 1
  %159 = call i32 @spin_unlock(i32* %158)
  br label %160

160:                                              ; preds = %148, %118, %107
  %161 = load i32, i32* %8, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %92

163:                                              ; preds = %92
  %164 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %165 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %164, i32 0, i32 0
  %166 = load i64, i64* %6, align 8
  %167 = call i32 @spin_unlock_irqrestore(i32* %165, i64 %166)
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local %struct.snd_gus_card* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_gf1_lvol_to_gvol_raw(i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_gf1_select_voice(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_gf1_ctrl_stop(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_gf1_write16(%struct.snd_gus_card*, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
