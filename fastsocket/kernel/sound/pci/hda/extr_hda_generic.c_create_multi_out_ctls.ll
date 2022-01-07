; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_multi_out_ctls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_multi_out_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64, i32* }
%struct.auto_pin_cfg = type { i32 }
%struct.nid_path = type { i32 }

@NID_PATH_VOL_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"CLFE\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"LFE\00", align 1
@NID_PATH_MUTE_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.auto_pin_cfg*)* @create_multi_out_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_multi_out_ctls(%struct.hda_codec* %0, %struct.auto_pin_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca %struct.hda_gen_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.auto_pin_cfg* %1, %struct.auto_pin_cfg** %5, align 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  store %struct.hda_gen_spec* %15, %struct.hda_gen_spec** %6, align 8
  %16 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %17 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %20 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %25 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %30 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %28, %23, %2
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %133, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %136

41:                                               ; preds = %37
  %42 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %43 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %44 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %42, i32 %49)
  store %struct.nid_path* %50, %struct.nid_path** %12, align 8
  %51 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %52 = icmp ne %struct.nid_path* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %133

54:                                               ; preds = %41
  %55 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @NID_PATH_VOL_CTL, align 4
  %58 = call i8* @get_line_out_pfx(%struct.hda_codec* %55, i32 %56, i32* %11, i32 %57)
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %61, %54
  %66 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %67 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %68 = call i32 @add_vol_ctl(%struct.hda_codec* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 1, %struct.nid_path* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %137

73:                                               ; preds = %65
  %74 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %75 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %76 = call i32 @add_vol_ctl(%struct.hda_codec* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 2, %struct.nid_path* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %137

81:                                               ; preds = %73
  br label %93

82:                                               ; preds = %61
  %83 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %87 = call i32 @add_stereo_vol(%struct.hda_codec* %83, i8* %84, i32 %85, %struct.nid_path* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %137

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %81
  %94 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @NID_PATH_MUTE_CTL, align 4
  %97 = call i8* @get_line_out_pfx(%struct.hda_codec* %94, i32 %95, i32* %11, i32 %96)
  store i8* %97, i8** %10, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %121, label %104

104:                                              ; preds = %100, %93
  %105 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %106 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %107 = call i32 @add_sw_ctl(%struct.hda_codec* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 1, %struct.nid_path* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  br label %137

112:                                              ; preds = %104
  %113 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %114 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %115 = call i32 @add_sw_ctl(%struct.hda_codec* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 2, %struct.nid_path* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %3, align 4
  br label %137

120:                                              ; preds = %112
  br label %132

121:                                              ; preds = %100
  %122 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %126 = call i32 @add_stereo_sw(%struct.hda_codec* %122, i8* %123, i32 %124, %struct.nid_path* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %3, align 4
  br label %137

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %120
  br label %133

133:                                              ; preds = %132, %53
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  br label %37

136:                                              ; preds = %37
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %129, %118, %110, %90, %79, %71
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec*, i32) #1

declare dso_local i8* @get_line_out_pfx(%struct.hda_codec*, i32, i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @add_vol_ctl(%struct.hda_codec*, i8*, i32, i32, %struct.nid_path*) #1

declare dso_local i32 @add_stereo_vol(%struct.hda_codec*, i8*, i32, %struct.nid_path*) #1

declare dso_local i32 @add_sw_ctl(%struct.hda_codec*, i8*, i32, i32, %struct.nid_path*) #1

declare dso_local i32 @add_stereo_sw(%struct.hda_codec*, i8*, i32, %struct.nid_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
