; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_set_multi_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_set_multi_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nid_path = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32)* @set_multi_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_multi_io(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_gen_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %12, align 8
  store %struct.hda_gen_spec* %13, %struct.hda_gen_spec** %8, align 8
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %15 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.nid_path* @get_multiio_path(%struct.hda_codec* %22, i32 %23)
  store %struct.nid_path* %24, %struct.nid_path** %10, align 8
  %25 = load %struct.nid_path*, %struct.nid_path** %10, align 8
  %26 = icmp ne %struct.nid_path* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %79

30:                                               ; preds = %3
  %31 = load %struct.nid_path*, %struct.nid_path** %10, align 8
  %32 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %79

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @PIN_OUT, align 4
  %44 = call i32 @set_pin_target(%struct.hda_codec* %41, i32 %42, i32 %43, i32 1)
  %45 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %46 = load %struct.nid_path*, %struct.nid_path** %10, align 8
  %47 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %48 = call i32 @aamix_default(%struct.hda_gen_spec* %47)
  %49 = call i32 @snd_hda_activate_path(%struct.hda_codec* %45, %struct.nid_path* %46, i32 1, i32 %48)
  %50 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @set_pin_eapd(%struct.hda_codec* %50, i32 %51, i32 1)
  br label %76

53:                                               ; preds = %37
  %54 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @set_pin_eapd(%struct.hda_codec* %54, i32 %55, i32 0)
  %57 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %58 = load %struct.nid_path*, %struct.nid_path** %10, align 8
  %59 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %60 = call i32 @aamix_default(%struct.hda_gen_spec* %59)
  %61 = call i32 @snd_hda_activate_path(%struct.hda_codec* %57, %struct.nid_path* %58, i32 0, i32 %60)
  %62 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %65 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @set_pin_target(%struct.hda_codec* %62, i32 %63, i32 %71, i32 1)
  %73 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %74 = load %struct.nid_path*, %struct.nid_path** %10, align 8
  %75 = call i32 @path_power_down_sync(%struct.hda_codec* %73, %struct.nid_path* %74)
  br label %76

76:                                               ; preds = %53, %40
  %77 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %78 = call i32 @update_automute_all(%struct.hda_codec* %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %36, %27
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.nid_path* @get_multiio_path(%struct.hda_codec*, i32) #1

declare dso_local i32 @set_pin_target(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_activate_path(%struct.hda_codec*, %struct.nid_path*, i32, i32) #1

declare dso_local i32 @aamix_default(%struct.hda_gen_spec*) #1

declare dso_local i32 @set_pin_eapd(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @path_power_down_sync(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @update_automute_all(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
