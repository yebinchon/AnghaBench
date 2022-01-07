; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_checksum_audio_infoframe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_checksum_audio_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_audio_infoframe = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_audio_infoframe*)* @hdmi_checksum_audio_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_checksum_audio_infoframe(%struct.hdmi_audio_infoframe* %0) #0 {
  %2 = alloca %struct.hdmi_audio_infoframe*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.hdmi_audio_infoframe* %0, %struct.hdmi_audio_infoframe** %2, align 8
  %6 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %2, align 8
  %7 = bitcast %struct.hdmi_audio_infoframe* %6 to i64*
  store i64* %7, i64** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %2, align 8
  %9 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %22, %1
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 8
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load i64*, i64** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = add nsw i64 %20, %19
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %10

25:                                               ; preds = %10
  %26 = load i64, i64* %4, align 8
  %27 = sub nsw i64 0, %26
  %28 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %2, align 8
  %29 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
