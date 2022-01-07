; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_callback.c_update_voice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_callback.c_update_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_voice = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, %struct.snd_emu10k1* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_emu10k1 = type { i32 }

@SNDRV_EMUX_UPDATE_VOLUME = common dso_local global i32 0, align 4
@IFATN_ATTENUATION = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_PITCH = common dso_local global i32 0, align 4
@IP = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_PAN = common dso_local global i32 0, align 4
@PTRX_FXSENDAMOUNT_A = common dso_local global i32 0, align 4
@PTRX_FXSENDAMOUNT_B = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_FMMOD = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_TREMFREQ = common dso_local global i32 0, align 4
@TREMFRQ = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_FM2FRQ2 = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux_voice*, i32)* @update_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_voice(%struct.snd_emux_voice* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_emux_voice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  store %struct.snd_emux_voice* %0, %struct.snd_emux_voice** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %7 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %6, i32 0, i32 6
  %8 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %7, align 8
  store %struct.snd_emu10k1* %8, %struct.snd_emu10k1** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SNDRV_EMUX_UPDATE_VOLUME, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %15 = load i32, i32* @IFATN_ATTENUATION, align 4
  %16 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %17 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %20 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %14, i32 %15, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %13, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SNDRV_EMUX_UPDATE_PITCH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %30 = load i32, i32* @IP, align 4
  %31 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %32 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %35 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %29, i32 %30, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %28, %23
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @SNDRV_EMUX_UPDATE_PAN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %45 = load i32, i32* @PTRX_FXSENDAMOUNT_A, align 4
  %46 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %47 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %50 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %44, i32 %45, i32 %48, i32 %51)
  %53 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %54 = load i32, i32* @PTRX_FXSENDAMOUNT_B, align 4
  %55 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %56 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %59 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %53, i32 %54, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %43, %38
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @SNDRV_EMUX_UPDATE_FMMOD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %69 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %70 = call i32 @set_fmmod(%struct.snd_emu10k1* %68, %struct.snd_emux_voice* %69)
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @SNDRV_EMUX_UPDATE_TREMFREQ, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %78 = load i32, i32* @TREMFRQ, align 4
  %79 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %80 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %83 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %77, i32 %78, i32 %81, i32 %86)
  br label %88

88:                                               ; preds = %76, %71
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @SNDRV_EMUX_UPDATE_FM2FRQ2, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %95 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %96 = call i32 @set_fm2frq2(%struct.snd_emu10k1* %94, %struct.snd_emux_voice* %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @SNDRV_EMUX_UPDATE_Q, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %104 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %105 = call i32 @set_filterQ(%struct.snd_emu10k1* %103, %struct.snd_emux_voice* %104)
  br label %106

106:                                              ; preds = %102, %97
  ret void
}

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @set_fmmod(%struct.snd_emu10k1*, %struct.snd_emux_voice*) #1

declare dso_local i32 @set_fm2frq2(%struct.snd_emu10k1*, %struct.snd_emux_voice*) #1

declare dso_local i32 @set_filterQ(%struct.snd_emu10k1*, %struct.snd_emux_voice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
