; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_patch_stac92hd95.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_patch_stac92hd95.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, %struct.sigmatel_spec*, i64 }
%struct.sigmatel_spec = type { i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@stac92hd95_pwr_nids = common dso_local global i32 0, align 4
@stac_patch_ops = common dso_local global i32 0, align 4
@stac92hd_proc_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_stac92hd95 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_stac92hd95(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.sigmatel_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @alloc_stac_spec(%struct.hda_codec* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %53

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %16 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %15, i32 0, i32 2
  %17 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %16, align 8
  store %struct.sigmatel_spec* %17, %struct.sigmatel_spec** %4, align 8
  %18 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %19 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %21 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %24 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %27 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 25, i32* %28, align 4
  %29 = load i32, i32* @stac92hd95_pwr_nids, align 4
  %30 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %31 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @stac92hd95_pwr_nids, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %35 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %37 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 8
  %38 = load i32, i32* @stac_patch_ops, align 4
  %39 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %40 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %42 = call i32 @stac_parse_auto_config(%struct.hda_codec* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %12
  %46 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %47 = call i32 @stac_free(%struct.hda_codec* %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %53

49:                                               ; preds = %12
  %50 = load i32, i32* @stac92hd_proc_hook, align 4
  %51 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %52 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %45, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @alloc_stac_spec(%struct.hda_codec*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @stac_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @stac_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
