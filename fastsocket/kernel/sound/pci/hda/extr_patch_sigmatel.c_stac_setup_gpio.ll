; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac_setup_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac_setup_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_3__, %struct.sigmatel_spec* }
%struct.TYPE_3__ = type { i32 }
%struct.sigmatel_spec = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@stac_set_power_state = common dso_local global i32 0, align 4
@stac_capture_led_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @stac_setup_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac_setup_gpio(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.sigmatel_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 1
  %6 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  store %struct.sigmatel_spec* %6, %struct.sigmatel_spec** %3, align 8
  %7 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %8 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %13 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %11
  %17 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %18 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %21 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %25 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %28 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %32 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %35 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %43

38:                                               ; preds = %11
  %39 = load i32, i32* @stac_set_power_state, align 4
  %40 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %41 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  br label %43

43:                                               ; preds = %38, %16
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %46 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %44
  %50 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %51 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %54 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %58 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %61 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %65 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %64, i32 0, i32 5
  store i32 1, i32* %65, align 4
  %66 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %67 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %70 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @stac_capture_led_hook, align 4
  %74 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %75 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %49, %44
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
