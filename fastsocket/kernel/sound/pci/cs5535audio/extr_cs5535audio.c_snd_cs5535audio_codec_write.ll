; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs5535audio/extr_cs5535audio.c_snd_cs5535audio_codec_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs5535audio/extr_cs5535audio.c_snd_cs5535audio_codec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535audio = type { i32 }

@CMD_MASK = common dso_local global i32 0, align 4
@CMD_NEW = common dso_local global i32 0, align 4
@ACC_CODEC_CNTL_WR_CMD = common dso_local global i32 0, align 4
@ACC_CODEC_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs5535audio*, i16, i16)* @snd_cs5535audio_codec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs5535audio_codec_write(%struct.cs5535audio* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.cs5535audio*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.cs5535audio* %0, %struct.cs5535audio** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %8 = load i16, i16* %5, align 2
  %9 = zext i16 %8 to i32
  %10 = shl i32 %9, 24
  store i32 %10, i32* %7, align 4
  %11 = load i16, i16* %6, align 2
  %12 = zext i16 %11 to i32
  %13 = load i32, i32* %7, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @CMD_MASK, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @CMD_NEW, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @ACC_CODEC_CNTL_WR_CMD, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load %struct.cs5535audio*, %struct.cs5535audio** %4, align 8
  %25 = load i32, i32* @ACC_CODEC_CNTL, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @cs_writel(%struct.cs5535audio* %24, i32 %25, i32 %26)
  %28 = load %struct.cs5535audio*, %struct.cs5535audio** %4, align 8
  %29 = call i32 @wait_till_cmd_acked(%struct.cs5535audio* %28, i32 50)
  ret void
}

declare dso_local i32 @cs_writel(%struct.cs5535audio*, i32, i32) #1

declare dso_local i32 @wait_till_cmd_acked(%struct.cs5535audio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
