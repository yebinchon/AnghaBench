; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_ess.c_ess_audio_prepare_for_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_ess.c_ess_audio_prepare_for_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }

@audio_devs = common dso_local global %struct.TYPE_9__** null, align 8
@DSP_CMD_SPKOFF = common dso_local global i32 0, align 4
@ess_inp_cmds = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ess_audio_prepare_for_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ess_audio_prepare_for_input(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @audio_devs, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %8, i64 %10
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %7, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = call i32 @ess_speed(%struct.TYPE_8__* %15, i32 1)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = load i32, i32* @DSP_CMD_SPKOFF, align 4
  %19 = call i32 @sb_dsp_command(%struct.TYPE_8__* %17, i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = call i32 @ess_write(%struct.TYPE_8__* %20, i32 184, i32 14)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 3, %25
  %27 = call i32 @ess_change(%struct.TYPE_8__* %22, i32 168, i32 3, i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = call i32 @ess_write(%struct.TYPE_8__* %28, i32 185, i32 2)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = load i32, i32* @ess_inp_cmds, align 4
  %32 = call i32 @ess_exec_commands(%struct.TYPE_8__* %30, i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = call i32 @ess_change(%struct.TYPE_8__* %33, i32 177, i32 240, i32 80)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = call i32 @ess_change(%struct.TYPE_8__* %35, i32 178, i32 240, i32 80)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  ret i32 0
}

declare dso_local i32 @ess_speed(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sb_dsp_command(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ess_write(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ess_change(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @ess_exec_commands(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
