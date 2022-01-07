; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_put_volume1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_put_volume1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { i32 }
%struct.snd_mixer_oss_slot = type { i64 }
%struct.slot = type { i32, i32* }

@SNDRV_MIXER_OSS_PRESENT_PVOLUME = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_PVOLUME = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_CVOLUME = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_CVOLUME = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_GVOLUME = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_GVOLUME = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_GLOBAL = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_GLOBAL = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_PSWITCH = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_PSWITCH = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_CSWITCH = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_CSWITCH = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_GSWITCH = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_GSWITCH = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_PROUTE = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_PROUTE = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_CROUTE = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_CROUTE = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_GROUTE = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_GROUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32, i32)* @snd_mixer_oss_put_volume1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_put_volume1(%struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_slot* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_mixer_oss_file*, align 8
  %6 = alloca %struct.snd_mixer_oss_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.slot*, align 8
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %5, align 8
  store %struct.snd_mixer_oss_slot* %1, %struct.snd_mixer_oss_slot** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %11 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.slot*
  store %struct.slot* %13, %struct.slot** %9, align 8
  %14 = load %struct.slot*, %struct.slot** %9, align 8
  %15 = getelementptr inbounds %struct.slot, %struct.slot* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_PVOLUME, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %4
  %21 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %22 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %23 = load %struct.slot*, %struct.slot** %9, align 8
  %24 = getelementptr inbounds %struct.slot, %struct.slot* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_PVOLUME, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @snd_mixer_oss_put_volume1_vol(%struct.snd_mixer_oss_file* %21, %struct.snd_mixer_oss_slot* %22, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.slot*, %struct.slot** %9, align 8
  %33 = getelementptr inbounds %struct.slot, %struct.slot* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CVOLUME, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %20
  %39 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %40 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %41 = load %struct.slot*, %struct.slot** %9, align 8
  %42 = getelementptr inbounds %struct.slot, %struct.slot* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_CVOLUME, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @snd_mixer_oss_put_volume1_vol(%struct.snd_mixer_oss_file* %39, %struct.snd_mixer_oss_slot* %40, i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %38, %20
  br label %111

51:                                               ; preds = %4
  %52 = load %struct.slot*, %struct.slot** %9, align 8
  %53 = getelementptr inbounds %struct.slot, %struct.slot* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CVOLUME, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %51
  %59 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %60 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %61 = load %struct.slot*, %struct.slot** %9, align 8
  %62 = getelementptr inbounds %struct.slot, %struct.slot* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_CVOLUME, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @snd_mixer_oss_put_volume1_vol(%struct.snd_mixer_oss_file* %59, %struct.snd_mixer_oss_slot* %60, i32 %66, i32 %67, i32 %68)
  br label %110

70:                                               ; preds = %51
  %71 = load %struct.slot*, %struct.slot** %9, align 8
  %72 = getelementptr inbounds %struct.slot, %struct.slot* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GVOLUME, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %79 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %80 = load %struct.slot*, %struct.slot** %9, align 8
  %81 = getelementptr inbounds %struct.slot, %struct.slot* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GVOLUME, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @snd_mixer_oss_put_volume1_vol(%struct.snd_mixer_oss_file* %78, %struct.snd_mixer_oss_slot* %79, i32 %85, i32 %86, i32 %87)
  br label %109

89:                                               ; preds = %70
  %90 = load %struct.slot*, %struct.slot** %9, align 8
  %91 = getelementptr inbounds %struct.slot, %struct.slot* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GLOBAL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %89
  %97 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %98 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %99 = load %struct.slot*, %struct.slot** %9, align 8
  %100 = getelementptr inbounds %struct.slot, %struct.slot* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GLOBAL, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @snd_mixer_oss_put_volume1_vol(%struct.snd_mixer_oss_file* %97, %struct.snd_mixer_oss_slot* %98, i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %96, %89
  br label %109

109:                                              ; preds = %108, %77
  br label %110

110:                                              ; preds = %109, %58
  br label %111

111:                                              ; preds = %110, %50
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %232

117:                                              ; preds = %114, %111
  %118 = load %struct.slot*, %struct.slot** %9, align 8
  %119 = getelementptr inbounds %struct.slot, %struct.slot* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_PSWITCH, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %117
  %125 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %126 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %127 = load %struct.slot*, %struct.slot** %9, align 8
  %128 = getelementptr inbounds %struct.slot, %struct.slot* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_PSWITCH, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %125, %struct.snd_mixer_oss_slot* %126, i32 %132, i32 %133, i32 %134, i32 0)
  br label %136

136:                                              ; preds = %124, %117
  %137 = load %struct.slot*, %struct.slot** %9, align 8
  %138 = getelementptr inbounds %struct.slot, %struct.slot* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CSWITCH, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %136
  %144 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %145 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %146 = load %struct.slot*, %struct.slot** %9, align 8
  %147 = getelementptr inbounds %struct.slot, %struct.slot* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_CSWITCH, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %144, %struct.snd_mixer_oss_slot* %145, i32 %151, i32 %152, i32 %153, i32 0)
  br label %155

155:                                              ; preds = %143, %136
  %156 = load %struct.slot*, %struct.slot** %9, align 8
  %157 = getelementptr inbounds %struct.slot, %struct.slot* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GSWITCH, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %155
  %163 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %164 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %165 = load %struct.slot*, %struct.slot** %9, align 8
  %166 = getelementptr inbounds %struct.slot, %struct.slot* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GSWITCH, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %163, %struct.snd_mixer_oss_slot* %164, i32 %170, i32 %171, i32 %172, i32 0)
  br label %174

174:                                              ; preds = %162, %155
  %175 = load %struct.slot*, %struct.slot** %9, align 8
  %176 = getelementptr inbounds %struct.slot, %struct.slot* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_PROUTE, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %174
  %182 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %183 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %184 = load %struct.slot*, %struct.slot** %9, align 8
  %185 = getelementptr inbounds %struct.slot, %struct.slot* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_PROUTE, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %182, %struct.snd_mixer_oss_slot* %183, i32 %189, i32 %190, i32 %191, i32 1)
  br label %193

193:                                              ; preds = %181, %174
  %194 = load %struct.slot*, %struct.slot** %9, align 8
  %195 = getelementptr inbounds %struct.slot, %struct.slot* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CROUTE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %212

200:                                              ; preds = %193
  %201 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %202 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %203 = load %struct.slot*, %struct.slot** %9, align 8
  %204 = getelementptr inbounds %struct.slot, %struct.slot* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_CROUTE, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %201, %struct.snd_mixer_oss_slot* %202, i32 %208, i32 %209, i32 %210, i32 1)
  br label %212

212:                                              ; preds = %200, %193
  %213 = load %struct.slot*, %struct.slot** %9, align 8
  %214 = getelementptr inbounds %struct.slot, %struct.slot* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GROUTE, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %212
  %220 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %221 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %222 = load %struct.slot*, %struct.slot** %9, align 8
  %223 = getelementptr inbounds %struct.slot, %struct.slot* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GROUTE, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* %8, align 4
  %230 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %220, %struct.snd_mixer_oss_slot* %221, i32 %227, i32 %228, i32 %229, i32 1)
  br label %231

231:                                              ; preds = %219, %212
  br label %352

232:                                              ; preds = %114
  %233 = load %struct.slot*, %struct.slot** %9, align 8
  %234 = getelementptr inbounds %struct.slot, %struct.slot* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_PSWITCH, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %232
  %240 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %241 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %242 = load %struct.slot*, %struct.slot** %9, align 8
  %243 = getelementptr inbounds %struct.slot, %struct.slot* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_PSWITCH, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* %8, align 4
  %250 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %240, %struct.snd_mixer_oss_slot* %241, i32 %247, i32 %248, i32 %249, i32 0)
  br label %351

251:                                              ; preds = %232
  %252 = load %struct.slot*, %struct.slot** %9, align 8
  %253 = getelementptr inbounds %struct.slot, %struct.slot* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CSWITCH, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %270

258:                                              ; preds = %251
  %259 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %260 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %261 = load %struct.slot*, %struct.slot** %9, align 8
  %262 = getelementptr inbounds %struct.slot, %struct.slot* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_CSWITCH, align 8
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* %8, align 4
  %269 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %259, %struct.snd_mixer_oss_slot* %260, i32 %266, i32 %267, i32 %268, i32 0)
  br label %350

270:                                              ; preds = %251
  %271 = load %struct.slot*, %struct.slot** %9, align 8
  %272 = getelementptr inbounds %struct.slot, %struct.slot* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GSWITCH, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %289

277:                                              ; preds = %270
  %278 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %279 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %280 = load %struct.slot*, %struct.slot** %9, align 8
  %281 = getelementptr inbounds %struct.slot, %struct.slot* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GSWITCH, align 8
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* %8, align 4
  %288 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %278, %struct.snd_mixer_oss_slot* %279, i32 %285, i32 %286, i32 %287, i32 0)
  br label %349

289:                                              ; preds = %270
  %290 = load %struct.slot*, %struct.slot** %9, align 8
  %291 = getelementptr inbounds %struct.slot, %struct.slot* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_PROUTE, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %308

296:                                              ; preds = %289
  %297 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %298 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %299 = load %struct.slot*, %struct.slot** %9, align 8
  %300 = getelementptr inbounds %struct.slot, %struct.slot* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_PROUTE, align 8
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %7, align 4
  %306 = load i32, i32* %8, align 4
  %307 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %297, %struct.snd_mixer_oss_slot* %298, i32 %304, i32 %305, i32 %306, i32 1)
  br label %348

308:                                              ; preds = %289
  %309 = load %struct.slot*, %struct.slot** %9, align 8
  %310 = getelementptr inbounds %struct.slot, %struct.slot* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CROUTE, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %327

315:                                              ; preds = %308
  %316 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %317 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %318 = load %struct.slot*, %struct.slot** %9, align 8
  %319 = getelementptr inbounds %struct.slot, %struct.slot* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_CROUTE, align 8
  %322 = getelementptr inbounds i32, i32* %320, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %7, align 4
  %325 = load i32, i32* %8, align 4
  %326 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %316, %struct.snd_mixer_oss_slot* %317, i32 %323, i32 %324, i32 %325, i32 1)
  br label %347

327:                                              ; preds = %308
  %328 = load %struct.slot*, %struct.slot** %9, align 8
  %329 = getelementptr inbounds %struct.slot, %struct.slot* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GROUTE, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %346

334:                                              ; preds = %327
  %335 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %336 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %337 = load %struct.slot*, %struct.slot** %9, align 8
  %338 = getelementptr inbounds %struct.slot, %struct.slot* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GROUTE, align 8
  %341 = getelementptr inbounds i32, i32* %339, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %7, align 4
  %344 = load i32, i32* %8, align 4
  %345 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %335, %struct.snd_mixer_oss_slot* %336, i32 %342, i32 %343, i32 %344, i32 1)
  br label %346

346:                                              ; preds = %334, %327
  br label %347

347:                                              ; preds = %346, %315
  br label %348

348:                                              ; preds = %347, %296
  br label %349

349:                                              ; preds = %348, %277
  br label %350

350:                                              ; preds = %349, %258
  br label %351

351:                                              ; preds = %350, %239
  br label %352

352:                                              ; preds = %351, %231
  ret i32 0
}

declare dso_local i32 @snd_mixer_oss_put_volume1_vol(%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32, i32, i32) #1

declare dso_local i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
