; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_snd_hda_activate_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_snd_hda_activate_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64 }
%struct.nid_path = type { i32, i32, i32*, i64*, i32* }

@AC_PWRST_D0 = common dso_local global i32 0, align 4
@AC_VERB_SET_POWER_STATE = common dso_local global i32 0, align 4
@AC_VERB_SET_CONNECT_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_activate_path(%struct.hda_codec* %0, %struct.nid_path* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.nid_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hda_gen_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store %struct.nid_path* %1, %struct.nid_path** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  store %struct.hda_gen_spec* %14, %struct.hda_gen_spec** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %19 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %20

20:                                               ; preds = %17, %4
  %21 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %22 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %106, %20
  %26 = load i32, i32* %10, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %109

28:                                               ; preds = %25
  %29 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %30 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %28
  %39 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  %40 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @AC_PWRST_D0, align 4
  %47 = call i32 @snd_hda_check_power_state(%struct.hda_codec* %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @AC_VERB_SET_POWER_STATE, align 4
  %53 = load i32, i32* @AC_PWRST_D0, align 4
  %54 = call i32 @snd_hda_codec_write(%struct.hda_codec* %50, i32 %51, i32 0, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %43
  br label %56

56:                                               ; preds = %55, %38, %28
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %56
  %60 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %61 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %60, i32 0, i32 3
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %59
  %69 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @AC_VERB_SET_CONNECT_SEL, align 4
  %72 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %73 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %69, i32 %70, i32 0, i32 %71, i32 %78)
  br label %80

80:                                               ; preds = %68, %59, %56
  %81 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %82 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @has_amp_in(%struct.hda_codec* %81, %struct.nid_path* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %88 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @activate_amp_in(%struct.hda_codec* %87, %struct.nid_path* %88, i32 %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %80
  %94 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %95 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i64 @has_amp_out(%struct.hda_codec* %94, %struct.nid_path* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %101 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @activate_amp_out(%struct.hda_codec* %100, %struct.nid_path* %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %93
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %10, align 4
  br label %25

109:                                              ; preds = %25
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %114 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %109
  ret void
}

declare dso_local i32 @snd_hda_check_power_state(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i64 @has_amp_in(%struct.hda_codec*, %struct.nid_path*, i32) #1

declare dso_local i32 @activate_amp_in(%struct.hda_codec*, %struct.nid_path*, i32, i32, i32) #1

declare dso_local i64 @has_amp_out(%struct.hda_codec*, %struct.nid_path*, i32) #1

declare dso_local i32 @activate_amp_out(%struct.hda_codec*, %struct.nid_path*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
