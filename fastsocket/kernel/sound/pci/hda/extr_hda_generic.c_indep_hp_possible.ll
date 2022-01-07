; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_indep_hp_possible.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_indep_hp_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32*, i32*, i32*, i32, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i64, i32, i32 }
%struct.nid_path = type { i32 }

@AUTO_PIN_HP_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @indep_hp_possible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @indep_hp_possible(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca %struct.nid_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  store %struct.hda_gen_spec* %11, %struct.hda_gen_spec** %4, align 8
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %13 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %12, i32 0, i32 4
  store %struct.auto_pin_cfg* %13, %struct.auto_pin_cfg** %5, align 8
  %14 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %15 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %21 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %27 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %32, i32 %33)
  store %struct.nid_path* %34, %struct.nid_path** %6, align 8
  %35 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %36 = icmp ne %struct.nid_path* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %125

38:                                               ; preds = %31
  %39 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %40 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %45 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %46 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @is_nid_contained(%struct.nid_path* %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43, %38
  store i32 1, i32* %2, align 4
  br label %125

51:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %90, %51
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %55 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %52
  %59 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %60 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %93

69:                                               ; preds = %58
  %70 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %71 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %72 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %70, i32 %77)
  store %struct.nid_path* %78, %struct.nid_path** %6, align 8
  %79 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %80 = icmp ne %struct.nid_path* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %69
  %82 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %83 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %84 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @is_nid_contained(%struct.nid_path* %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %125

89:                                               ; preds = %81, %69
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %52

93:                                               ; preds = %68, %52
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %121, %93
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %97 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %124

100:                                              ; preds = %94
  %101 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %102 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %103 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %101, i32 %108)
  store %struct.nid_path* %109, %struct.nid_path** %6, align 8
  %110 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %111 = icmp ne %struct.nid_path* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %100
  %113 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %114 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %115 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @is_nid_contained(%struct.nid_path* %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %125

120:                                              ; preds = %112, %100
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %94

124:                                              ; preds = %94
  store i32 1, i32* %2, align 4
  br label %125

125:                                              ; preds = %124, %119, %88, %50, %37
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec*, i32) #1

declare dso_local i64 @is_nid_contained(%struct.nid_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
