; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_path_power_down_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_path_power_down_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 }
%struct.nid_path = type { i32, i32*, i64 }

@AC_PWRST_D3 = common dso_local global i32 0, align 4
@AC_VERB_SET_POWER_STATE = common dso_local global i32 0, align 4
@AC_VERB_GET_POWER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.nid_path*)* @path_power_down_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_power_down_sync(%struct.hda_codec* %0, %struct.nid_path* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.nid_path*, align 8
  %5 = alloca %struct.hda_gen_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.nid_path* %1, %struct.nid_path** %4, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  store %struct.hda_gen_spec* %11, %struct.hda_gen_spec** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %13 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %18 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  br label %70

22:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %54, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %26 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  %30 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %31 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @AC_PWRST_D3, align 4
  %40 = call i32 @snd_hda_check_power_state(%struct.hda_codec* %37, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %29
  %43 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @is_active_nid_for_any(%struct.hda_codec* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @AC_VERB_SET_POWER_STATE, align 4
  %51 = load i32, i32* @AC_PWRST_D3, align 4
  %52 = call i32 @snd_hda_codec_write(%struct.hda_codec* %48, i32 %49, i32 0, i32 %50, i32 %51)
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %47, %42, %29
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %23

57:                                               ; preds = %23
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = call i32 @msleep(i32 10)
  %62 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %63 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %64 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AC_VERB_GET_POWER_STATE, align 4
  %69 = call i32 @snd_hda_codec_read(%struct.hda_codec* %62, i32 %67, i32 0, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %21, %60, %57
  ret void
}

declare dso_local i32 @snd_hda_check_power_state(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @is_active_nid_for_any(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
