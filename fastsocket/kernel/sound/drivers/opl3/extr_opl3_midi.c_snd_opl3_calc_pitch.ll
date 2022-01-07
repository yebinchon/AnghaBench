; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_midi.c_snd_opl3_calc_pitch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_midi.c_snd_opl3_calc_pitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_channel = type { i32 }

@opl3_note_table = common dso_local global i32* null, align 8
@OPL3_FNUM_HIGH_MASK = common dso_local global i32 0, align 4
@OPL3_BLOCKNUM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, %struct.snd_midi_channel*)* @snd_opl3_calc_pitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_opl3_calc_pitch(i8* %0, i8* %1, i32 %2, %struct.snd_midi_channel* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_midi_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.snd_midi_channel* %3, %struct.snd_midi_channel** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sdiv i32 %14, 12
  %16 = and i32 %15, 7
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = srem i32 %18, 12
  %20 = add nsw i32 %19, 2
  store i32 %20, i32* %10, align 4
  %21 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %22 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %4
  %26 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %27 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp sgt i32 %29, 8191
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 8191, i32* %12, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %12, align 4
  %34 = sdiv i32 %33, 4096
  store i32 %34, i32* %13, align 4
  %35 = load i32*, i32** @opl3_note_table, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  %42 = load i32*, i32** @opl3_note_table, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %43, %44
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load i32, i32* %12, align 4
  %53 = srem i32 %52, 4096
  %54 = mul nsw i32 %51, %53
  %55 = sdiv i32 %54, 4096
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %11, align 4
  br label %64

58:                                               ; preds = %4
  %59 = load i32*, i32** @opl3_note_table, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %58, %32
  %65 = load i32, i32* %11, align 4
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %5, align 8
  store i8 %66, i8* %67, align 1
  %68 = load i32, i32* %11, align 4
  %69 = ashr i32 %68, 8
  %70 = load i32, i32* @OPL3_FNUM_HIGH_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* %9, align 4
  %73 = shl i32 %72, 2
  %74 = load i32, i32* @OPL3_BLOCKNUM_MASK, align 4
  %75 = and i32 %73, %74
  %76 = or i32 %71, %75
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %6, align 8
  store i8 %77, i8* %78, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
