; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_voice_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_voice_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl4 = type { i32 }
%struct.opl4_voice = type { i32, i64, i32 }

@OPL4_KEY_ON_BIT = common dso_local global i32 0, align 4
@OPL4_REG_MISC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_opl4*, %struct.opl4_voice*)* @snd_opl4_voice_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_opl4_voice_off(%struct.snd_opl4* %0, %struct.opl4_voice* %1) #0 {
  %3 = alloca %struct.snd_opl4*, align 8
  %4 = alloca %struct.opl4_voice*, align 8
  store %struct.snd_opl4* %0, %struct.snd_opl4** %3, align 8
  store %struct.opl4_voice* %1, %struct.opl4_voice** %4, align 8
  %5 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %6 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %5, i32 0, i32 2
  %7 = call i32 @list_del(i32* %6)
  %8 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %9 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %8, i32 0, i32 2
  %10 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %11 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %10, i32 0, i32 0
  %12 = call i32 @list_add_tail(i32* %9, i32* %11)
  %13 = load i32, i32* @OPL4_KEY_ON_BIT, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %16 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %20 = load i64, i64* @OPL4_REG_MISC, align 8
  %21 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %22 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %26 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @snd_opl4_write(%struct.snd_opl4* %19, i64 %24, i32 %27)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @snd_opl4_write(%struct.snd_opl4*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
