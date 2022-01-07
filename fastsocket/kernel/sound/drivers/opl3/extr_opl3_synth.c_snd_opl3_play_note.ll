; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_synth.c_snd_opl3_play_note.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_synth.c_snd_opl3_play_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i64, i32 (%struct.snd_opl3*, i16, i8)* }
%struct.snd_dm_fm_note = type { i8, i32, i32, i64 }

@SNDRV_DM_FM_MODE_OPL3 = common dso_local global i64 0, align 8
@MAX_OPL3_VOICES = common dso_local global i8 0, align 1
@MAX_OPL2_VOICES = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@OPL3_LEFT = common dso_local global i16 0, align 2
@OPL3_RIGHT = common dso_local global i16 0, align 2
@OPL3_REG_FNUM_LOW = common dso_local global i8 0, align 1
@OPL3_KEYON_BIT = common dso_local global i8 0, align 1
@OPL3_BLOCKNUM_MASK = common dso_local global i32 0, align 4
@OPL3_FNUM_HIGH_MASK = common dso_local global i8 0, align 1
@OPL3_REG_KEYON_BLOCK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_opl3*, %struct.snd_dm_fm_note*)* @snd_opl3_play_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_play_note(%struct.snd_opl3* %0, %struct.snd_dm_fm_note* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_opl3*, align 8
  %5 = alloca %struct.snd_dm_fm_note*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  store %struct.snd_opl3* %0, %struct.snd_opl3** %4, align 8
  store %struct.snd_dm_fm_note* %1, %struct.snd_dm_fm_note** %5, align 8
  %10 = load %struct.snd_dm_fm_note*, %struct.snd_dm_fm_note** %5, align 8
  %11 = getelementptr inbounds %struct.snd_dm_fm_note, %struct.snd_dm_fm_note* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 8
  %13 = zext i8 %12 to i32
  %14 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %15 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SNDRV_DM_FM_MODE_OPL3, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i8, i8* @MAX_OPL3_VOICES, align 1
  %21 = zext i8 %20 to i32
  br label %25

22:                                               ; preds = %2
  %23 = load i8, i8* @MAX_OPL2_VOICES, align 1
  %24 = zext i8 %23 to i32
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32 [ %21, %19 ], [ %24, %22 ]
  %27 = icmp sge i32 %13, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %126

31:                                               ; preds = %25
  %32 = load %struct.snd_dm_fm_note*, %struct.snd_dm_fm_note** %5, align 8
  %33 = getelementptr inbounds %struct.snd_dm_fm_note, %struct.snd_dm_fm_note* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 8
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @MAX_OPL2_VOICES, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i16, i16* @OPL3_LEFT, align 2
  store i16 %40, i16* %6, align 2
  %41 = load %struct.snd_dm_fm_note*, %struct.snd_dm_fm_note** %5, align 8
  %42 = getelementptr inbounds %struct.snd_dm_fm_note, %struct.snd_dm_fm_note* %41, i32 0, i32 0
  %43 = load i8, i8* %42, align 8
  store i8 %43, i8* %7, align 1
  br label %54

44:                                               ; preds = %31
  %45 = load i16, i16* @OPL3_RIGHT, align 2
  store i16 %45, i16* %6, align 2
  %46 = load %struct.snd_dm_fm_note*, %struct.snd_dm_fm_note** %5, align 8
  %47 = getelementptr inbounds %struct.snd_dm_fm_note, %struct.snd_dm_fm_note* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 8
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @MAX_OPL2_VOICES, align 1
  %51 = zext i8 %50 to i32
  %52 = sub nsw i32 %49, %51
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %7, align 1
  br label %54

54:                                               ; preds = %44, %39
  %55 = load %struct.snd_dm_fm_note*, %struct.snd_dm_fm_note** %5, align 8
  %56 = getelementptr inbounds %struct.snd_dm_fm_note, %struct.snd_dm_fm_note* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %9, align 1
  %59 = load i16, i16* %6, align 2
  %60 = zext i16 %59 to i32
  %61 = load i8, i8* @OPL3_REG_FNUM_LOW, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* %7, align 1
  %64 = zext i8 %63 to i32
  %65 = add nsw i32 %62, %64
  %66 = or i32 %60, %65
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %8, align 2
  %68 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %69 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %68, i32 0, i32 1
  %70 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %69, align 8
  %71 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %72 = load i16, i16* %8, align 2
  %73 = load i8, i8* %9, align 1
  %74 = call i32 %70(%struct.snd_opl3* %71, i16 zeroext %72, i8 zeroext %73)
  store i8 0, i8* %9, align 1
  %75 = load %struct.snd_dm_fm_note*, %struct.snd_dm_fm_note** %5, align 8
  %76 = getelementptr inbounds %struct.snd_dm_fm_note, %struct.snd_dm_fm_note* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %54
  %80 = load i8, i8* @OPL3_KEYON_BIT, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* %9, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %83, %81
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %9, align 1
  br label %86

86:                                               ; preds = %79, %54
  %87 = load %struct.snd_dm_fm_note*, %struct.snd_dm_fm_note** %5, align 8
  %88 = getelementptr inbounds %struct.snd_dm_fm_note, %struct.snd_dm_fm_note* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = shl i32 %89, 2
  %91 = load i32, i32* @OPL3_BLOCKNUM_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load i8, i8* %9, align 1
  %94 = zext i8 %93 to i32
  %95 = or i32 %94, %92
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %9, align 1
  %97 = load %struct.snd_dm_fm_note*, %struct.snd_dm_fm_note** %5, align 8
  %98 = getelementptr inbounds %struct.snd_dm_fm_note, %struct.snd_dm_fm_note* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 8
  %101 = trunc i32 %100 to i8
  %102 = zext i8 %101 to i32
  %103 = load i8, i8* @OPL3_FNUM_HIGH_MASK, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %102, %104
  %106 = load i8, i8* %9, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %107, %105
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %9, align 1
  %110 = load i16, i16* %6, align 2
  %111 = zext i16 %110 to i32
  %112 = load i8, i8* @OPL3_REG_KEYON_BLOCK, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* %7, align 1
  %115 = zext i8 %114 to i32
  %116 = add nsw i32 %113, %115
  %117 = or i32 %111, %116
  %118 = trunc i32 %117 to i16
  store i16 %118, i16* %8, align 2
  %119 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %120 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %119, i32 0, i32 1
  %121 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %120, align 8
  %122 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %123 = load i16, i16* %8, align 2
  %124 = load i8, i8* %9, align 1
  %125 = call i32 %121(%struct.snd_opl3* %122, i16 zeroext %123, i8 zeroext %124)
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %86, %28
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
