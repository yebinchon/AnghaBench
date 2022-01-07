; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_ams-delta.c_cx81801_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_ams-delta.c_cx81801_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.tty_struct*)* }
%struct.tty_struct = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }
%struct.TYPE_4__ = type { i32 }

@cx81801_timer = common dso_local global i32 0, align 4
@v253_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ams_delta_hook_switch = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"Mouthpiece\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Earpiece\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Microphone\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"AGCIN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @cx81801_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx81801_close(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.snd_soc_codec*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  store %struct.snd_soc_codec* %6, %struct.snd_soc_codec** %3, align 8
  %7 = call i32 @del_timer_sync(i32* @cx81801_timer)
  %8 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @v253_ops, i32 0, i32 0), align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %10 = call i32 %8(%struct.tty_struct* %9)
  %11 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ams_delta_hook_switch, i32 0, i32 0))
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %13 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %15 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %17 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %19 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %21 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %23 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %22)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
