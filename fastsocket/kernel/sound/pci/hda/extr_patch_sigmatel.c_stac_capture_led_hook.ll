; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac_capture_led_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac_capture_led_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, i32, i32, i32, i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.snd_ctl_elem_value*)* @stac_capture_led_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac_capture_led_hook(%struct.hda_codec* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.sigmatel_spec*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %8, align 8
  store %struct.sigmatel_spec* %9, %struct.sigmatel_spec** %5, align 8
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %11 = icmp ne %struct.snd_ctl_elem_value* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %75

13:                                               ; preds = %2
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %13
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %22, %13
  %32 = phi i1 [ true, %13 ], [ %30, %22 ]
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %36 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %43 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %48 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %51 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %63

54:                                               ; preds = %40
  %55 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %56 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %60 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %54, %46
  %64 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %65 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %66 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %69 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %72 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @stac_gpio_set(%struct.hda_codec* %64, i32 %67, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %12, %63, %31
  ret void
}

declare dso_local i32 @stac_gpio_set(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
