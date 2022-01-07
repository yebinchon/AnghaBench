; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_ess.c_ess_audio_prepare_for_output_audio1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_ess.c_ess_audio_prepare_for_output_audio1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64 }

@audio_devs = common dso_local global %struct.TYPE_10__** null, align 8
@ess_out_cmds = common dso_local global i32 0, align 4
@DSP_CMD_SPKON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ess_audio_prepare_for_output_audio1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ess_audio_prepare_for_output_audio1(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @audio_devs, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %8, i64 %10
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %7, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = call i32 @sb_dsp_reset(%struct.TYPE_9__* %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = call i32 @ess_speed(%struct.TYPE_9__* %17, i32 1)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = call i32 @ess_write(%struct.TYPE_9__* %19, i32 184, i32 4)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 3, %24
  %26 = call i32 @ess_change(%struct.TYPE_9__* %21, i32 168, i32 3, i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = call i32 @ess_write(%struct.TYPE_9__* %27, i32 185, i32 2)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = load i32, i32* @ess_out_cmds, align 4
  %31 = call i32 @ess_exec_commands(%struct.TYPE_9__* %29, i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = call i32 @ess_change(%struct.TYPE_9__* %32, i32 177, i32 240, i32 80)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = call i32 @ess_change(%struct.TYPE_9__* %34, i32 178, i32 240, i32 80)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = load i32, i32* @DSP_CMD_SPKON, align 4
  %38 = call i32 @sb_dsp_command(%struct.TYPE_9__* %36, i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  ret i32 0
}

declare dso_local i32 @sb_dsp_reset(%struct.TYPE_9__*) #1

declare dso_local i32 @ess_speed(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ess_write(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ess_change(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @ess_exec_commands(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @sb_dsp_command(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
