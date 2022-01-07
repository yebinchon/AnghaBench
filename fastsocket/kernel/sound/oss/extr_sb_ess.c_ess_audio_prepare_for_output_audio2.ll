; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_ess.c_ess_audio_prepare_for_output_audio2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_ess.c_ess_audio_prepare_for_output_audio2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i64 }

@audio_devs = common dso_local global %struct.TYPE_9__** null, align 8
@AFMT_U8 = common dso_local global i64 0, align 8
@SOUND_MIXER_PCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ess_audio_prepare_for_output_audio2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ess_audio_prepare_for_output_audio2(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @audio_devs, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %9, i64 %11
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %7, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = call i32 @ess_chgmixer(%struct.TYPE_8__* %16, i32 120, i32 208, i32 208)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = call i32 @ess_speed(%struct.TYPE_8__* %18, i32 2)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = call i32 @ess_getmixer(%struct.TYPE_8__* %20, i32 122)
  %22 = and i32 %21, 24
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %8, align 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i8, i8* %8, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, 2
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %8, align 1
  br label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AFMT_U8, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i8, i8* %8, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, 5
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %8, align 1
  br label %44

44:                                               ; preds = %39, %33
  %45 = load i8, i8* %8, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %46, 96
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %8, align 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = load i8, i8* %8, align 1
  %51 = call i32 @ess_setmixer(%struct.TYPE_8__* %49, i32 122, i8 zeroext %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = load i32, i32* @SOUND_MIXER_PCM, align 4
  %54 = call i32 @ess_mixer_reload(%struct.TYPE_8__* %52, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  ret i32 0
}

declare dso_local i32 @ess_chgmixer(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @ess_speed(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ess_getmixer(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ess_setmixer(%struct.TYPE_8__*, i32, i8 zeroext) #1

declare dso_local i32 @ess_mixer_reload(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
