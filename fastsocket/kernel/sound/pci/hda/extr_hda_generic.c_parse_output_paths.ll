; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_parse_output_paths.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_parse_output_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64, i64, i32, i32, i32*, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i64, i64, i64, i64, i64*, i64*, i64* }
%struct.nid_path = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"==> lo_type=%d, wired=%d, mio=%d, badness=0x%x\0A\00", align 1
@AUTO_PIN_HP_OUT = common dso_local global i64 0, align 8
@AUTO_PIN_SPEAKER_OUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"==> restoring best_cfg\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"==> Best config: lo_type=%d, wired=%d, mio=%d\0A\00", align 1
@HDA_OUTPUT = common dso_local global i32 0, align 4
@PIN_HP = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @parse_output_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_output_paths(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca %struct.auto_pin_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %17, align 8
  store %struct.hda_gen_spec* %18, %struct.hda_gen_spec** %4, align 8
  %19 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %20 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %19, i32 0, i32 5
  store %struct.auto_pin_cfg* %20, %struct.auto_pin_cfg** %5, align 8
  %21 = load i32, i32* @INT_MAX, align 4
  store i32 %21, i32* %8, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.auto_pin_cfg* @kmalloc(i32 56, i32 %22)
  store %struct.auto_pin_cfg* %23, %struct.auto_pin_cfg** %6, align 8
  %24 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %25 = icmp ne %struct.auto_pin_cfg* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %324

29:                                               ; preds = %1
  %30 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %31 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %32 = bitcast %struct.auto_pin_cfg* %30 to i8*
  %33 = bitcast %struct.auto_pin_cfg* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 56, i1 false)
  br label %34

34:                                               ; preds = %147, %102, %86, %78, %29
  %35 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @fill_and_eval_dacs(%struct.hda_codec* %35, i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %43 = call i32 @kfree(%struct.auto_pin_cfg* %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %2, align 4
  br label %324

45:                                               ; preds = %34
  %46 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %47 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (i8*, ...) @debug_badness(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %54 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %55 = call i32 @debug_show_configs(%struct.hda_codec* %53, %struct.auto_pin_cfg* %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %45
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %8, align 4
  %61 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %62 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %63 = bitcast %struct.auto_pin_cfg* %61 to i8*
  %64 = bitcast %struct.auto_pin_cfg* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 56, i1 false)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %59, %45
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  br label %182

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  br label %34

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %34

87:                                               ; preds = %79
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %182

91:                                               ; preds = %87
  store i32 1, i32* %14, align 4
  %92 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %93 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %136

96:                                               ; preds = %91
  %97 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %98 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %136

102:                                              ; preds = %96
  %103 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %104 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %107 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %109 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %108, i32 0, i32 5
  %110 = load i64*, i64** %109, align 8
  %111 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %112 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %111, i32 0, i32 6
  %113 = load i64*, i64** %112, align 8
  %114 = call i32 @memcpy(i64* %110, i64* %113, i32 8)
  %115 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %116 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %119 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %118, i32 0, i32 3
  store i64 %117, i64* %119, align 8
  %120 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %121 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %120, i32 0, i32 6
  %122 = load i64*, i64** %121, align 8
  %123 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %124 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %123, i32 0, i32 4
  %125 = load i64*, i64** %124, align 8
  %126 = call i32 @memcpy(i64* %122, i64* %125, i32 8)
  %127 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %128 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %127, i32 0, i32 1
  store i64 0, i64* %128, align 8
  %129 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %130 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %129, i32 0, i32 4
  %131 = load i64*, i64** %130, align 8
  %132 = call i32 @memset(i64* %131, i32 0, i32 8)
  %133 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %134 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %135 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  store i32 1, i32* %10, align 4
  br label %34

136:                                              ; preds = %96, %91
  %137 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %138 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %181

141:                                              ; preds = %136
  %142 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %143 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %181

147:                                              ; preds = %141
  %148 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %149 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %152 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %154 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %153, i32 0, i32 4
  %155 = load i64*, i64** %154, align 8
  %156 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %157 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %156, i32 0, i32 6
  %158 = load i64*, i64** %157, align 8
  %159 = call i32 @memcpy(i64* %155, i64* %158, i32 8)
  %160 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %161 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %164 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %163, i32 0, i32 3
  store i64 %162, i64* %164, align 8
  %165 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %166 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %165, i32 0, i32 6
  %167 = load i64*, i64** %166, align 8
  %168 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %169 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %168, i32 0, i32 5
  %170 = load i64*, i64** %169, align 8
  %171 = call i32 @memcpy(i64* %167, i64* %170, i32 8)
  %172 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %173 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %172, i32 0, i32 2
  store i64 0, i64* %173, align 8
  %174 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %175 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %174, i32 0, i32 5
  %176 = load i64*, i64** %175, align 8
  %177 = call i32 @memset(i64* %176, i32 0, i32 8)
  %178 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %179 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %180 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  store i32 1, i32* %10, align 4
  br label %34

181:                                              ; preds = %141, %136
  br label %182

182:                                              ; preds = %181, %90, %70
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  %186 = call i32 (i8*, ...) @debug_badness(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %187 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %188 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %189 = bitcast %struct.auto_pin_cfg* %187 to i8*
  %190 = bitcast %struct.auto_pin_cfg* %188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %189, i8* align 8 %190, i64 56, i1 false)
  %191 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @fill_and_eval_dacs(%struct.hda_codec* %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %185, %182
  %196 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %197 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %13, align 4
  %201 = call i32 (i8*, ...) @debug_badness(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %198, i32 %199, i32 %200)
  %202 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %203 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %204 = call i32 @debug_show_configs(%struct.hda_codec* %202, %struct.auto_pin_cfg* %203)
  %205 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %206 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %205, i32 0, i32 6
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %243

211:                                              ; preds = %195
  %212 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %213 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %214 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %212, i32 %217)
  store %struct.nid_path* %218, %struct.nid_path** %15, align 8
  %219 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %220 = icmp ne %struct.nid_path* %219, null
  br i1 %220, label %221, label %227

221:                                              ; preds = %211
  %222 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %223 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %224 = call i32 @look_for_out_vol_nid(%struct.hda_codec* %222, %struct.nid_path* %223)
  %225 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %226 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %225, i32 0, i32 3
  store i32 %224, i32* %226, align 4
  br label %227

227:                                              ; preds = %221, %211
  %228 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %229 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %227
  %233 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %234 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %235 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @HDA_OUTPUT, align 4
  %238 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %239 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @snd_hda_set_vmaster_tlv(%struct.hda_codec* %233, i32 %236, i32 %237, i32 %240)
  br label %242

242:                                              ; preds = %232, %227
  br label %243

243:                                              ; preds = %242, %195
  %244 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %245 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %243
  %249 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %250 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %248, %243
  %255 = load i32, i32* @PIN_HP, align 4
  store i32 %255, i32* %7, align 4
  br label %258

256:                                              ; preds = %248
  %257 = load i32, i32* @PIN_OUT, align 4
  store i32 %257, i32* %7, align 4
  br label %258

258:                                              ; preds = %256, %254
  %259 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %260 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %261 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %260, i32 0, i32 3
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %264 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %263, i32 0, i32 6
  %265 = load i64*, i64** %264, align 8
  %266 = load i32, i32* %7, align 4
  %267 = call i32 @set_pin_targets(%struct.hda_codec* %259, i64 %262, i64* %265, i32 %266)
  %268 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %269 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %273, label %283

273:                                              ; preds = %258
  %274 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %275 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %276 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %279 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %278, i32 0, i32 5
  %280 = load i64*, i64** %279, align 8
  %281 = load i32, i32* @PIN_HP, align 4
  %282 = call i32 @set_pin_targets(%struct.hda_codec* %274, i64 %277, i64* %280, i32 %281)
  br label %283

283:                                              ; preds = %273, %258
  %284 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %285 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %288 = icmp ne i64 %286, %287
  br i1 %288, label %289, label %309

289:                                              ; preds = %283
  %290 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %291 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %289
  %295 = load i32, i32* @PIN_HP, align 4
  br label %298

296:                                              ; preds = %289
  %297 = load i32, i32* @PIN_OUT, align 4
  br label %298

298:                                              ; preds = %296, %294
  %299 = phi i32 [ %295, %294 ], [ %297, %296 ]
  store i32 %299, i32* %7, align 4
  %300 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %301 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %302 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %305 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %304, i32 0, i32 4
  %306 = load i64*, i64** %305, align 8
  %307 = load i32, i32* %7, align 4
  %308 = call i32 @set_pin_targets(%struct.hda_codec* %300, i64 %303, i64* %306, i32 %307)
  br label %309

309:                                              ; preds = %298, %283
  %310 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %311 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %321

314:                                              ; preds = %309
  %315 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %316 = call i32 @indep_hp_possible(%struct.hda_codec* %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %314
  %319 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %320 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %319, i32 0, i32 0
  store i64 0, i64* %320, align 8
  br label %321

321:                                              ; preds = %318, %314, %309
  %322 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %323 = call i32 @kfree(%struct.auto_pin_cfg* %322)
  store i32 0, i32* %2, align 4
  br label %324

324:                                              ; preds = %321, %41, %26
  %325 = load i32, i32* %2, align 4
  ret i32 %325
}

declare dso_local %struct.auto_pin_cfg* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fill_and_eval_dacs(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @kfree(%struct.auto_pin_cfg*) #1

declare dso_local i32 @debug_badness(i8*, ...) #1

declare dso_local i32 @debug_show_configs(%struct.hda_codec*, %struct.auto_pin_cfg*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec*, i32) #1

declare dso_local i32 @look_for_out_vol_nid(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @snd_hda_set_vmaster_tlv(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @set_pin_targets(%struct.hda_codec*, i64, i64*, i32) #1

declare dso_local i32 @indep_hp_possible(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
