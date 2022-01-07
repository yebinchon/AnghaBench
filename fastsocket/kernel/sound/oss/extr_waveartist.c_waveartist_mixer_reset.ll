; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_mixer_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_mixer_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@debug_flg = common dso_local global i32 0, align 4
@DEBUG_MIXER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: mixer_reset\0A\00", align 1
@WACMD_RST_MIXER = common dso_local global i32 0, align 4
@WACMD_SET_MIXER = common dso_local global i32 0, align 4
@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @waveartist_mixer_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waveartist_mixer_reset(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load i32, i32* @debug_flg, align 4
  %5 = load i32, i32* @DEBUG_MIXER, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = load i32, i32* @WACMD_RST_MIXER, align 4
  %17 = call i32 @waveartist_cmd1(%struct.TYPE_9__* %15, i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = load i32, i32* @WACMD_SET_MIXER, align 4
  %20 = call i32 @waveartist_cmd3(%struct.TYPE_9__* %18, i32 %19, i32 38912, i32 43062)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = load i32, i32* @WACMD_SET_MIXER, align 4
  %23 = call i32 @waveartist_cmd3(%struct.TYPE_9__* %21, i32 %22, i32 19456, i32 35840)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = load i32, i32* @WACMD_SET_MIXER, align 4
  %26 = call i32 @waveartist_cmd3(%struct.TYPE_9__* %24, i32 %25, i32 10241, i32 26624)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = call i32 @waveartist_set_recmask(%struct.TYPE_9__* %27, i32 0)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %37, %14
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @waveartist_mixer_update(%struct.TYPE_9__* %34, i32 %35)
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %29

40:                                               ; preds = %29
  ret void
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @waveartist_cmd1(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @waveartist_cmd3(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @waveartist_set_recmask(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @waveartist_mixer_update(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
