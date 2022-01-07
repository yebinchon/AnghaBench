; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_chipio_set_control_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_chipio_set_control_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32 }

@WIDGET_CHIP_CTRL = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_PARAM_SET = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_STATUS = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_PARAM_EX_ID_SET = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_PARAM_EX_VALUE_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32)* @chipio_set_control_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chipio_set_control_param(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ca0132_spec*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.ca0132_spec*, %struct.ca0132_spec** %10, align 8
  store %struct.ca0132_spec* %11, %struct.ca0132_spec** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ult i32 %12, 32
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 5
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %23 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %24 = load i32, i32* @VENDOR_CHIPIO_PARAM_SET, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @snd_hda_codec_write(%struct.hda_codec* %22, i32 %23, i32 0, i32 %24, i32 %25)
  br label %50

27:                                               ; preds = %14, %3
  %28 = load %struct.ca0132_spec*, %struct.ca0132_spec** %7, align 8
  %29 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %32 = load i32, i32* @VENDOR_CHIPIO_STATUS, align 4
  %33 = call i64 @chipio_send(%struct.hda_codec* %31, i32 %32, i32 0)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %37 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %38 = load i32, i32* @VENDOR_CHIPIO_PARAM_EX_ID_SET, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @snd_hda_codec_write(%struct.hda_codec* %36, i32 %37, i32 0, i32 %38, i32 %39)
  %41 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %42 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %43 = load i32, i32* @VENDOR_CHIPIO_PARAM_EX_VALUE_SET, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @snd_hda_codec_write(%struct.hda_codec* %41, i32 %42, i32 0, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %35, %27
  %47 = load %struct.ca0132_spec*, %struct.ca0132_spec** %7, align 8
  %48 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %46, %17
  ret void
}

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @chipio_send(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
