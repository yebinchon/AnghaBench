; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_new_analog_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_new_analog_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64, i64, i8*, i8** }
%struct.nid_path = type { i32*, i32, i32*, i32 }

@HDA_INPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"loopback\00", align 1
@HDA_CTL_WIDGET_VOL = common dso_local global i32 0, align 4
@NID_PATH_VOL_CTL = common dso_local global i64 0, align 8
@HDA_CTL_WIDGET_MUTE = common dso_local global i32 0, align 4
@NID_PATH_MUTE_CTL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"loopback-merge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i64, i8*, i32, i64)* @new_analog_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_analog_input(%struct.hda_codec* %0, i32 %1, i64 %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.hda_gen_spec*, align 8
  %15 = alloca %struct.nid_path*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %19 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 0
  %21 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %20, align 8
  store %struct.hda_gen_spec* %21, %struct.hda_gen_spec** %14, align 8
  %22 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i32, i32* @HDA_INPUT, align 4
  %25 = call i64 @nid_has_volume(%struct.hda_codec* %22, i64 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %6
  %28 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i32, i32* @HDA_INPUT, align 4
  %31 = call i64 @nid_has_mute(%struct.hda_codec* %28, i64 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %168

34:                                               ; preds = %27, %6
  %35 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %35, i64 %36, i64 %37, i32 0)
  store %struct.nid_path* %38, %struct.nid_path** %15, align 8
  %39 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %40 = icmp ne %struct.nid_path* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %168

44:                                               ; preds = %34
  %45 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %46 = call i32 @print_nid_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.nid_path* %45)
  %47 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %48 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %49 = call i8* @snd_hda_get_path_idx(%struct.hda_codec* %47, %struct.nid_path* %48)
  %50 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %51 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %50, i32 0, i32 3
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  store i8* %49, i8** %55, align 8
  %56 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %57 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %60 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %18, align 4
  %66 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load i32, i32* @HDA_INPUT, align 4
  %69 = call i64 @nid_has_volume(%struct.hda_codec* %66, i64 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %44
  %72 = load i64, i64* %13, align 8
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* @HDA_INPUT, align 4
  %75 = call i32 @HDA_COMPOSE_AMP_VAL(i64 %72, i32 3, i32 %73, i32 %74)
  store i32 %75, i32* %16, align 4
  %76 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %77 = load i32, i32* @HDA_CTL_WIDGET_VOL, align 4
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @__add_pb_vol_ctrl(%struct.hda_gen_spec* %76, i32 %77, i8* %78, i32 %79, i32 %80)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %7, align 4
  br label %168

86:                                               ; preds = %71
  %87 = load i32, i32* %16, align 4
  %88 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %89 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @NID_PATH_VOL_CTL, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %87, i32* %92, align 4
  br label %93

93:                                               ; preds = %86, %44
  %94 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i32, i32* @HDA_INPUT, align 4
  %97 = call i64 @nid_has_mute(%struct.hda_codec* %94, i64 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %121

99:                                               ; preds = %93
  %100 = load i64, i64* %13, align 8
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* @HDA_INPUT, align 4
  %103 = call i32 @HDA_COMPOSE_AMP_VAL(i64 %100, i32 3, i32 %101, i32 %102)
  store i32 %103, i32* %16, align 4
  %104 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %105 = load i32, i32* @HDA_CTL_WIDGET_MUTE, align 4
  %106 = load i8*, i8** %11, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @__add_pb_sw_ctrl(%struct.hda_gen_spec* %104, i32 %105, i8* %106, i32 %107, i32 %108)
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %99
  %113 = load i32, i32* %17, align 4
  store i32 %113, i32* %7, align 4
  br label %168

114:                                              ; preds = %99
  %115 = load i32, i32* %16, align 4
  %116 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %117 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 %115, i32* %120, align 4
  br label %121

121:                                              ; preds = %114, %93
  %122 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %123 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %122, i32 0, i32 3
  store i32 1, i32* %123, align 8
  %124 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %125 = load i64, i64* %13, align 8
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @add_loopback_list(%struct.hda_gen_spec* %124, i64 %125, i32 %126)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i32, i32* %17, align 4
  store i32 %131, i32* %7, align 4
  br label %168

132:                                              ; preds = %121
  %133 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %134 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %137 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %135, %138
  br i1 %139, label %140, label %167

140:                                              ; preds = %132
  %141 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %142 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %167, label %145

145:                                              ; preds = %140
  %146 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %147 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %148 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %151 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %146, i64 %149, i64 %152, i32 0)
  store %struct.nid_path* %153, %struct.nid_path** %15, align 8
  %154 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %155 = icmp ne %struct.nid_path* %154, null
  br i1 %155, label %156, label %166

156:                                              ; preds = %145
  %157 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %158 = call i32 @print_nid_path(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.nid_path* %157)
  %159 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %160 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %159, i32 0, i32 3
  store i32 1, i32* %160, align 8
  %161 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %162 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %163 = call i8* @snd_hda_get_path_idx(%struct.hda_codec* %161, %struct.nid_path* %162)
  %164 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %165 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %156, %145
  br label %167

167:                                              ; preds = %166, %140, %132
  store i32 0, i32* %7, align 4
  br label %168

168:                                              ; preds = %167, %130, %112, %84, %41, %33
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local i64 @nid_has_volume(%struct.hda_codec*, i64, i32) #1

declare dso_local i64 @nid_has_mute(%struct.hda_codec*, i64, i32) #1

declare dso_local %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec*, i64, i64, i32) #1

declare dso_local i32 @print_nid_path(i8*, %struct.nid_path*) #1

declare dso_local i8* @snd_hda_get_path_idx(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @HDA_COMPOSE_AMP_VAL(i64, i32, i32, i32) #1

declare dso_local i32 @__add_pb_vol_ctrl(%struct.hda_gen_spec*, i32, i8*, i32, i32) #1

declare dso_local i32 @__add_pb_sw_ctrl(%struct.hda_gen_spec*, i32, i8*, i32, i32) #1

declare dso_local i32 @add_loopback_list(%struct.hda_gen_spec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
