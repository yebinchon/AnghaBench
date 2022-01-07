; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_update_aamix_paths.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_update_aamix_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64, i64 }
%struct.nid_path = type { i64* }

@AUTO_PIN_HP_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32, i32, i32)* @update_aamix_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_aamix_paths(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hda_gen_spec*, align 8
  %12 = alloca %struct.nid_path*, align 8
  %13 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %15, align 8
  store %struct.hda_gen_spec* %16, %struct.hda_gen_spec** %11, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %17, i32 %18)
  store %struct.nid_path* %19, %struct.nid_path** %12, align 8
  %20 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %20, i32 %21)
  store %struct.nid_path* %22, %struct.nid_path** %13, align 8
  %23 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %24 = icmp ne %struct.nid_path* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load %struct.nid_path*, %struct.nid_path** %13, align 8
  %27 = icmp ne %struct.nid_path* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %5
  br label %72

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @AUTO_PIN_HP_OUT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  %35 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.nid_path*, %struct.nid_path** %13, align 8
  %40 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  %45 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %38, %33, %29
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %54 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %55 = call i32 @snd_hda_activate_path(%struct.hda_codec* %53, %struct.nid_path* %54, i32 0, i32 1)
  %56 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %57 = load %struct.nid_path*, %struct.nid_path** %13, align 8
  %58 = call i32 @snd_hda_activate_path(%struct.hda_codec* %56, %struct.nid_path* %57, i32 1, i32 1)
  %59 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %60 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %61 = call i32 @path_power_down_sync(%struct.hda_codec* %59, %struct.nid_path* %60)
  br label %72

62:                                               ; preds = %49
  %63 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %64 = load %struct.nid_path*, %struct.nid_path** %13, align 8
  %65 = call i32 @snd_hda_activate_path(%struct.hda_codec* %63, %struct.nid_path* %64, i32 0, i32 0)
  %66 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %67 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %68 = call i32 @snd_hda_activate_path(%struct.hda_codec* %66, %struct.nid_path* %67, i32 1, i32 0)
  %69 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %70 = load %struct.nid_path*, %struct.nid_path** %13, align 8
  %71 = call i32 @path_power_down_sync(%struct.hda_codec* %69, %struct.nid_path* %70)
  br label %72

72:                                               ; preds = %28, %62, %52
  ret void
}

declare dso_local %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_activate_path(%struct.hda_codec*, %struct.nid_path*, i32, i32) #1

declare dso_local i32 @path_power_down_sync(%struct.hda_codec*, %struct.nid_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
