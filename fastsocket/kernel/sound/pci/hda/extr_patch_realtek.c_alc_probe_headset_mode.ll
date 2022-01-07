; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_probe_headset_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_probe_headset_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64 }

@alc_update_headset_mode_hook = common dso_local global i32 0, align 4
@alc_update_headset_mode = common dso_local global i32 0, align 4
@alc_update_headset_jack_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc_probe_headset_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_probe_headset_mode(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.alc_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  store %struct.alc_spec* %8, %struct.alc_spec** %4, align 8
  %9 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %10 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store %struct.auto_pin_cfg* %11, %struct.auto_pin_cfg** %5, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %71, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %15 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %12
  %19 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %20 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %18
  %29 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %30 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %35 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %43 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %33, %28, %18
  %45 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %46 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %44
  %55 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %56 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %54
  %60 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %61 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %69 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %59, %54, %44
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %12

74:                                               ; preds = %12
  %75 = load i32, i32* @alc_update_headset_mode_hook, align 4
  %76 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %77 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* @alc_update_headset_mode, align 4
  %80 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %81 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @alc_update_headset_jack_cb, align 4
  %84 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %85 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
