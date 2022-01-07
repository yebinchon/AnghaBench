; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_add_vol_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_add_vol_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.nid_path = type { i32* }

@NID_PATH_VOL_CTL = common dso_local global i64 0, align 8
@HDA_CTL_WIDGET_VOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i8*, i32, i32, %struct.nid_path*)* @add_vol_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_vol_ctl(%struct.hda_codec* %0, i8* %1, i32 %2, i32 %3, %struct.nid_path* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nid_path*, align 8
  %12 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nid_path* %4, %struct.nid_path** %11, align 8
  %13 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %14 = icmp ne %struct.nid_path* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %38

16:                                               ; preds = %5
  %17 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %18 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @NID_PATH_VOL_CTL, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %38

26:                                               ; preds = %16
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @amp_val_replace_channels(i32 %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %31 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HDA_CTL_WIDGET_VOL, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @__add_pb_vol_ctrl(i32 %32, i32 %33, i8* %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %26, %25, %15
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @amp_val_replace_channels(i32, i32) #1

declare dso_local i32 @__add_pb_vol_ctrl(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
