; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_activate_amp_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_activate_amp_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64, %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64 }
%struct.nid_path = type { i64*, i32* }

@AC_WID_PIN = common dso_local global i32 0, align 4
@AC_WID_AUD_IN = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.nid_path*, i32, i32, i32)* @activate_amp_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @activate_amp_in(%struct.hda_codec* %0, %struct.nid_path* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.nid_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hda_gen_spec*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store %struct.nid_path* %1, %struct.nid_path** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 1
  %20 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %19, align 8
  store %struct.hda_gen_spec* %20, %struct.hda_gen_spec** %11, align 8
  %21 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %22 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %17, align 8
  %28 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %29 = load i64, i64* %17, align 8
  %30 = call i32 @snd_hda_get_conn_list(%struct.hda_codec* %28, i64 %29, i64** %12)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %32 = load i64, i64* %17, align 8
  %33 = call i32 @get_wcaps(%struct.hda_codec* %31, i64 %32)
  %34 = call i32 @get_wcaps_type(i32 %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @AC_WID_PIN, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %47, label %38

38:                                               ; preds = %5
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @AC_WID_AUD_IN, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %44 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %5
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %56

48:                                               ; preds = %42, %38
  %49 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %50 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %48, %47
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %67, %56
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %63 = load i64, i64* %17, align 8
  %64 = load i32, i32* @HDA_INPUT, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @init_amp(%struct.hda_codec* %62, i64 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %57

70:                                               ; preds = %57
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %101, %70
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %71
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i64*, i64** %12, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  %89 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82, %79
  br label %101

93:                                               ; preds = %82, %75
  %94 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %95 = load i64, i64* %17, align 8
  %96 = load i32, i32* @HDA_INPUT, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @activate_amp(%struct.hda_codec* %94, i64 %95, i32 %96, i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %93, %92
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %71

104:                                              ; preds = %71
  ret void
}

declare dso_local i32 @snd_hda_get_conn_list(%struct.hda_codec*, i64, i64**) #1

declare dso_local i32 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i64) #1

declare dso_local i32 @init_amp(%struct.hda_codec*, i64, i32, i32) #1

declare dso_local i32 @activate_amp(%struct.hda_codec*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
