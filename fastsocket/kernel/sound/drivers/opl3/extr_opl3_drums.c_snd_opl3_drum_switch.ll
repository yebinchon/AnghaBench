; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_drums.c_snd_opl3_drum_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_drums.c_snd_opl3_drum_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3_drum_voice = type { i32 }
%struct.snd_opl3 = type { i32, i32 (%struct.snd_opl3*, i32, i8)* }
%struct.snd_midi_channel = type { i32 }

@OPL3_PERCUSSION_ENABLE = common dso_local global i32 0, align 4
@snd_opl3_drum_table = common dso_local global i8* null, align 8
@bass_op1 = common dso_local global %struct.snd_opl3_drum_voice zeroinitializer, align 4
@hihat = common dso_local global %struct.snd_opl3_drum_voice zeroinitializer, align 4
@snare = common dso_local global %struct.snd_opl3_drum_voice zeroinitializer, align 4
@tomtom = common dso_local global %struct.snd_opl3_drum_voice zeroinitializer, align 4
@cymbal = common dso_local global %struct.snd_opl3_drum_voice zeroinitializer, align 4
@OPL3_LEFT = common dso_local global i32 0, align 4
@OPL3_REG_PERCUSSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_opl3_drum_switch(%struct.snd_opl3* %0, i32 %1, i32 %2, i32 %3, %struct.snd_midi_channel* %4) #0 {
  %6 = alloca %struct.snd_opl3*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_midi_channel*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.snd_opl3_drum_voice*, align 8
  store %struct.snd_opl3* %0, %struct.snd_opl3** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.snd_midi_channel* %4, %struct.snd_midi_channel** %10, align 8
  %13 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %14 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @OPL3_PERCUSSION_ENABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %78

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 35
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 81
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20
  br label %78

27:                                               ; preds = %23
  %28 = load i8*, i8** @snd_opl3_drum_table, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 35
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %11, align 1
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %27
  %37 = load i8, i8* %11, align 1
  %38 = zext i8 %37 to i32
  switch i32 %38, label %44 [
    i32 132, label %39
    i32 130, label %40
    i32 129, label %41
    i32 128, label %42
    i32 131, label %43
  ]

39:                                               ; preds = %36
  store %struct.snd_opl3_drum_voice* @bass_op1, %struct.snd_opl3_drum_voice** %12, align 8
  br label %45

40:                                               ; preds = %36
  store %struct.snd_opl3_drum_voice* @hihat, %struct.snd_opl3_drum_voice** %12, align 8
  br label %45

41:                                               ; preds = %36
  store %struct.snd_opl3_drum_voice* @snare, %struct.snd_opl3_drum_voice** %12, align 8
  br label %45

42:                                               ; preds = %36
  store %struct.snd_opl3_drum_voice* @tomtom, %struct.snd_opl3_drum_voice** %12, align 8
  br label %45

43:                                               ; preds = %36
  store %struct.snd_opl3_drum_voice* @cymbal, %struct.snd_opl3_drum_voice** %12, align 8
  br label %45

44:                                               ; preds = %36
  store %struct.snd_opl3_drum_voice* @tomtom, %struct.snd_opl3_drum_voice** %12, align 8
  br label %45

45:                                               ; preds = %44, %43, %42, %41, %40, %39
  %46 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %47 = load %struct.snd_opl3_drum_voice*, %struct.snd_opl3_drum_voice** %12, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %10, align 8
  %50 = call i32 @snd_opl3_drum_vol_set(%struct.snd_opl3* %46, %struct.snd_opl3_drum_voice* %47, i32 %48, %struct.snd_midi_channel* %49)
  %51 = load i8, i8* %11, align 1
  %52 = zext i8 %51 to i32
  %53 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %54 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %65

57:                                               ; preds = %27
  %58 = load i8, i8* %11, align 1
  %59 = zext i8 %58 to i32
  %60 = xor i32 %59, -1
  %61 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %62 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %57, %45
  %66 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %67 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %66, i32 0, i32 1
  %68 = load i32 (%struct.snd_opl3*, i32, i8)*, i32 (%struct.snd_opl3*, i32, i8)** %67, align 8
  %69 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %70 = load i32, i32* @OPL3_LEFT, align 4
  %71 = load i32, i32* @OPL3_REG_PERCUSSION, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %74 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = trunc i32 %75 to i8
  %77 = call i32 %68(%struct.snd_opl3* %69, i32 %72, i8 zeroext %76)
  br label %78

78:                                               ; preds = %65, %26, %19
  ret void
}

declare dso_local i32 @snd_opl3_drum_vol_set(%struct.snd_opl3*, %struct.snd_opl3_drum_voice*, i32, %struct.snd_midi_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
