; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_capture_mixers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_capture_mixers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32, i32*, i32, i64, %struct.hda_input_mux }
%struct.hda_input_mux = type { i32 }
%struct.snd_kcontrol_new = type { i32 }
%struct.nid_path = type { i32* }

@.str = private unnamed_addr constant [13 x i8] c"Input Source\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Capture Source\00", align 1
@cap_src_temp = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NID_PATH_VOL_CTL = common dso_local global i64 0, align 8
@HDA_INPUT = common dso_local global i32 0, align 4
@NID_PATH_MUTE_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @create_capture_mixers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_capture_mixers(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca %struct.hda_input_mux*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_kcontrol_new*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %18 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 0
  %20 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %19, align 8
  store %struct.hda_gen_spec* %20, %struct.hda_gen_spec** %4, align 8
  %21 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %22 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %21, i32 0, i32 5
  store %struct.hda_input_mux* %22, %struct.hda_input_mux** %5, align 8
  %23 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %24 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %30 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %34 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %32
  %38 = load %struct.hda_input_mux*, %struct.hda_input_mux** %5, align 8
  %39 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 1
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)
  store i8* %46, i8** %11, align 8
  %47 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec* %47, i8* %48, i32* @cap_src_temp)
  store %struct.snd_kcontrol_new* %49, %struct.snd_kcontrol_new** %10, align 8
  %50 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %51 = icmp ne %struct.snd_kcontrol_new* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %202

55:                                               ; preds = %42
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %58 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %37, %32
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %198, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %201

64:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  %65 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %66 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %166, %64
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.hda_input_mux*, %struct.hda_input_mux** %5, align 8
  %71 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %169

74:                                               ; preds = %68
  %75 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call %struct.nid_path* @get_input_path(%struct.hda_codec* %75, i32 %76, i32 %77)
  store %struct.nid_path* %78, %struct.nid_path** %17, align 8
  %79 = load %struct.nid_path*, %struct.nid_path** %17, align 8
  %80 = icmp ne %struct.nid_path* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  br label %166

82:                                               ; preds = %74
  %83 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %84 = load %struct.nid_path*, %struct.nid_path** %17, align 8
  %85 = call i32 @parse_capvol_in_path(%struct.hda_codec* %83, %struct.nid_path* %84)
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %82
  %89 = load %struct.nid_path*, %struct.nid_path** %17, align 8
  %90 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @NID_PATH_VOL_CTL, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %15, align 4
  br label %119

95:                                               ; preds = %82
  %96 = load i32, i32* %15, align 4
  %97 = load %struct.nid_path*, %struct.nid_path** %17, align 8
  %98 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @NID_PATH_VOL_CTL, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %96, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %95
  store i32 1, i32* %12, align 4
  %105 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.nid_path*, %struct.nid_path** %17, align 8
  %108 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @NID_PATH_VOL_CTL, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @HDA_INPUT, align 4
  %114 = call i32 @same_amp_caps(%struct.hda_codec* %105, i32 %106, i32 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %104
  store i32 1, i32* %13, align 4
  br label %117

117:                                              ; preds = %116, %104
  br label %118

118:                                              ; preds = %117, %95
  br label %119

119:                                              ; preds = %118, %88
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = load %struct.nid_path*, %struct.nid_path** %17, align 8
  %124 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %16, align 4
  br label %153

129:                                              ; preds = %119
  %130 = load i32, i32* %16, align 4
  %131 = load %struct.nid_path*, %struct.nid_path** %17, align 8
  %132 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %130, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %129
  store i32 1, i32* %12, align 4
  %139 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %140 = load i32, i32* %16, align 4
  %141 = load %struct.nid_path*, %struct.nid_path** %17, align 8
  %142 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @HDA_INPUT, align 4
  %148 = call i32 @same_amp_caps(%struct.hda_codec* %139, i32 %140, i32 %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %138
  store i32 1, i32* %13, align 4
  br label %151

151:                                              ; preds = %150, %138
  br label %152

152:                                              ; preds = %151, %129
  br label %153

153:                                              ; preds = %152, %122
  %154 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %155 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %156 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @is_inv_dmic_pin(%struct.hda_codec* %154, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %153
  store i32 1, i32* %14, align 4
  br label %165

165:                                              ; preds = %164, %153
  br label %166

166:                                              ; preds = %165, %81
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %68

169:                                              ; preds = %68
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %169
  %173 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @create_single_cap_vol_ctl(%struct.hda_codec* %173, i32 %174, i32 %175, i32 %176, i32 %177)
  store i32 %178, i32* %9, align 4
  br label %192

179:                                              ; preds = %169
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %179
  %183 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* %16, align 4
  %187 = call i32 @create_bind_cap_vol_ctl(%struct.hda_codec* %183, i32 %184, i32 %185, i32 %186)
  store i32 %187, i32* %9, align 4
  br label %191

188:                                              ; preds = %179
  %189 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %190 = call i32 @create_multi_cap_vol_ctl(%struct.hda_codec* %189)
  store i32 %190, i32* %9, align 4
  br label %191

191:                                              ; preds = %188, %182
  br label %192

192:                                              ; preds = %191, %172
  %193 = load i32, i32* %9, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load i32, i32* %9, align 4
  store i32 %196, i32* %2, align 4
  br label %202

197:                                              ; preds = %192
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  br label %60

201:                                              ; preds = %60
  store i32 0, i32* %2, align 4
  br label %202

202:                                              ; preds = %201, %195, %52
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec*, i8*, i32*) #1

declare dso_local %struct.nid_path* @get_input_path(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @parse_capvol_in_path(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @same_amp_caps(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i64 @is_inv_dmic_pin(%struct.hda_codec*, i32) #1

declare dso_local i32 @create_single_cap_vol_ctl(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @create_bind_cap_vol_ctl(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @create_multi_cap_vol_ctl(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
