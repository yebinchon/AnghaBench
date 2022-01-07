; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_dspio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_dspio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32 }

@VENDOR_DSPIO_SCP_WRITE_DATA_LOW = common dso_local global i32 0, align 4
@VENDOR_DSPIO_SCP_WRITE_DATA_HIGH = common dso_local global i32 0, align 4
@WIDGET_DSP_CTRL = common dso_local global i32 0, align 4
@VENDOR_DSPIO_STATUS = common dso_local global i32 0, align 4
@VENDOR_STATUS_DSPIO_SCP_COMMAND_QUEUE_FULL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @dspio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspio_write(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ca0132_spec*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  store %struct.ca0132_spec* %9, %struct.ca0132_spec** %5, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %11 = call i32 @dspio_write_wait(%struct.hda_codec* %10)
  %12 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  %13 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %16 = load i32, i32* @VENDOR_DSPIO_SCP_WRITE_DATA_LOW, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 65535
  %19 = call i32 @dspio_send(%struct.hda_codec* %15, i32 %16, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %37

23:                                               ; preds = %2
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = load i32, i32* @VENDOR_DSPIO_SCP_WRITE_DATA_HIGH, align 4
  %26 = load i32, i32* %4, align 4
  %27 = lshr i32 %26, 16
  %28 = call i32 @dspio_send(%struct.hda_codec* %24, i32 %25, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %37

32:                                               ; preds = %23
  %33 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %34 = load i32, i32* @WIDGET_DSP_CTRL, align 4
  %35 = load i32, i32* @VENDOR_DSPIO_STATUS, align 4
  %36 = call i32 @snd_hda_codec_read(%struct.hda_codec* %33, i32 %34, i32 0, i32 %35, i32 0)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %32, %31, %22
  %38 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  %39 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @VENDOR_STATUS_DSPIO_SCP_COMMAND_QUEUE_FULL, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  br label %48

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i32 [ %46, %44 ], [ 0, %47 ]
  ret i32 %49
}

declare dso_local i32 @dspio_write_wait(%struct.hda_codec*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dspio_send(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
