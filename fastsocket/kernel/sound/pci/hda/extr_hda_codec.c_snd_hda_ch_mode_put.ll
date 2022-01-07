; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_ch_mode_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_ch_mode_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hda_channel_mode = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_ch_mode_put(%struct.hda_codec* %0, %struct.snd_ctl_elem_value* %1, %struct.hda_channel_mode* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca %struct.snd_ctl_elem_value*, align 8
  %9 = alloca %struct.hda_channel_mode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %8, align 8
  store %struct.hda_channel_mode* %2, %struct.hda_channel_mode** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %8, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %62

26:                                               ; preds = %5
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hda_channel_mode*, %struct.hda_channel_mode** %9, align 8
  %30 = load i32, i32* %12, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.hda_channel_mode, %struct.hda_channel_mode* %29, i64 %31
  %33 = getelementptr inbounds %struct.hda_channel_mode, %struct.hda_channel_mode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %28, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %62

37:                                               ; preds = %26
  %38 = load %struct.hda_channel_mode*, %struct.hda_channel_mode** %9, align 8
  %39 = load i32, i32* %12, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.hda_channel_mode, %struct.hda_channel_mode* %38, i64 %40
  %42 = getelementptr inbounds %struct.hda_channel_mode, %struct.hda_channel_mode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.hda_channel_mode*, %struct.hda_channel_mode** %9, align 8
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.hda_channel_mode, %struct.hda_channel_mode* %45, i64 %47
  %49 = getelementptr inbounds %struct.hda_channel_mode, %struct.hda_channel_mode* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %37
  %53 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %54 = load %struct.hda_channel_mode*, %struct.hda_channel_mode** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.hda_channel_mode, %struct.hda_channel_mode* %54, i64 %56
  %58 = getelementptr inbounds %struct.hda_channel_mode, %struct.hda_channel_mode* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @snd_hda_sequence_write_cache(%struct.hda_codec* %53, i64 %59)
  br label %61

61:                                               ; preds = %52, %37
  store i32 1, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %36, %23
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @snd_hda_sequence_write_cache(%struct.hda_codec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
