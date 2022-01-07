; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_dspio_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_dspio_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@WIDGET_DSP_CTRL = common dso_local global i32 0, align 4
@VENDOR_STATUS_DSPIO_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32)* @dspio_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspio_send(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @jiffies, align 8
  %11 = call i64 @msecs_to_jiffies(i32 1000)
  %12 = add i64 %10, %11
  store i64 %12, i64* %9, align 8
  br label %13

13:                                               ; preds = %29, %3
  %14 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %15 = load i32, i32* @WIDGET_DSP_CTRL, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @snd_hda_codec_read(%struct.hda_codec* %14, i32 %15, i32 0, i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @VENDOR_STATUS_DSPIO_BUSY, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %37

27:                                               ; preds = %21, %13
  %28 = call i32 @msleep(i32 20)
  br label %29

29:                                               ; preds = %27
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @time_before(i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %13, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %25
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
