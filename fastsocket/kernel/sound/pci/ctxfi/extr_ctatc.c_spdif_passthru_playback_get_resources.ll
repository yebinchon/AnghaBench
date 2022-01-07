; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctatc.c_spdif_passthru_playback_get_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctatc.c_spdif_passthru_playback_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i32, %struct.src_mgr** }
%struct.src_mgr = type { i32 (%struct.src_mgr*, %struct.src_desc*, %struct.src**)*, i32 (%struct.src_mgr*, %struct.amixer_desc*, %struct.amixer**)* }
%struct.src_desc = type opaque
%struct.src = type opaque
%struct.amixer_desc = type opaque
%struct.amixer = type opaque
%struct.ct_atc_pcm = type { i64, i32*, %struct.TYPE_5__*, %struct.src.0* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.src.0 = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.src.0*, i32)*, i32* (%struct.src.0*)*, i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)* }
%struct.amixer_mgr = type { i32 (%struct.src_mgr*, %struct.src_desc.1*, %struct.src.0**)*, i32 (%struct.src_mgr*, %struct.amixer_desc.2*, %struct.amixer.3**)* }
%struct.src_desc.1 = type { i32, i32, i32, i32 }
%struct.amixer_desc.2 = type opaque
%struct.amixer.3 = type opaque
%struct.amixer_desc.4 = type { i32, i32 }
%struct.amixer.5 = type { i32 }

@SRC = common dso_local global i64 0, align 8
@AMIXER = common dso_local global i64 0, align 8
@MEMRD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)* @spdif_passthru_playback_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_passthru_playback_get_resources(%struct.ct_atc* %0, %struct.ct_atc_pcm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca %struct.ct_atc_pcm*, align 8
  %6 = alloca %struct.src_mgr*, align 8
  %7 = alloca %struct.amixer_mgr*, align 8
  %8 = alloca %struct.src_desc.1, align 4
  %9 = alloca %struct.amixer_desc.4, align 4
  %10 = alloca %struct.src.0*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %4, align 8
  store %struct.ct_atc_pcm* %1, %struct.ct_atc_pcm** %5, align 8
  %16 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %17 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %16, i32 0, i32 1
  %18 = load %struct.src_mgr**, %struct.src_mgr*** %17, align 8
  %19 = load i64, i64* @SRC, align 8
  %20 = getelementptr inbounds %struct.src_mgr*, %struct.src_mgr** %18, i64 %19
  %21 = load %struct.src_mgr*, %struct.src_mgr** %20, align 8
  store %struct.src_mgr* %21, %struct.src_mgr** %6, align 8
  %22 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %23 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %22, i32 0, i32 1
  %24 = load %struct.src_mgr**, %struct.src_mgr*** %23, align 8
  %25 = load i64, i64* @AMIXER, align 8
  %26 = getelementptr inbounds %struct.src_mgr*, %struct.src_mgr** %24, i64 %25
  %27 = load %struct.src_mgr*, %struct.src_mgr** %26, align 8
  %28 = bitcast %struct.src_mgr* %27 to %struct.amixer_mgr*
  store %struct.amixer_mgr* %28, %struct.amixer_mgr** %7, align 8
  %29 = bitcast %struct.src_desc.1* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 16, i1 false)
  %30 = bitcast %struct.amixer_desc.4* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 8, i1 false)
  %31 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %32 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %39 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %15, align 4
  %41 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %42 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %43 = call i32 @atc_pcm_release_resources(%struct.ct_atc* %41, %struct.ct_atc_pcm* %42)
  %44 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %45 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.src_desc.1, %struct.src_desc.1* %8, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.src_desc.1, %struct.src_desc.1* %8, i32 0, i32 1
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %66, %2
  %54 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %55 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %15, align 4
  %62 = getelementptr inbounds %struct.src_desc.1, %struct.src_desc.1* %8, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul i32 %61, %63
  %65 = icmp ugt i32 %60, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %53
  %67 = getelementptr inbounds %struct.src_desc.1, %struct.src_desc.1* %8, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %53

70:                                               ; preds = %53
  %71 = load i32, i32* @MEMRD, align 4
  %72 = getelementptr inbounds %struct.src_desc.1, %struct.src_desc.1* %8, i32 0, i32 2
  store i32 %71, i32* %72, align 4
  %73 = load %struct.src_mgr*, %struct.src_mgr** %6, align 8
  %74 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %73, i32 0, i32 0
  %75 = load i32 (%struct.src_mgr*, %struct.src_desc*, %struct.src**)*, i32 (%struct.src_mgr*, %struct.src_desc*, %struct.src**)** %74, align 8
  %76 = load %struct.src_mgr*, %struct.src_mgr** %6, align 8
  %77 = bitcast %struct.src_desc.1* %8 to %struct.src_desc*
  %78 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %79 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %78, i32 0, i32 3
  %80 = bitcast %struct.src.0** %79 to %struct.src**
  %81 = call i32 %75(%struct.src_mgr* %76, %struct.src_desc* %77, %struct.src** %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  br label %223

85:                                               ; preds = %70
  %86 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %87 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %15, align 4
  %94 = getelementptr inbounds %struct.src_desc.1, %struct.src_desc.1* %8, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = mul i32 %93, %95
  %97 = call i32 @atc_get_pitch(i32 %92, i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %99 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %98, i32 0, i32 3
  %100 = load %struct.src.0*, %struct.src.0** %99, align 8
  store %struct.src.0* %100, %struct.src.0** %10, align 8
  %101 = load %struct.src.0*, %struct.src.0** %10, align 8
  %102 = getelementptr inbounds %struct.src.0, %struct.src.0* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 5
  %105 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %104, align 8
  %106 = load %struct.src.0*, %struct.src.0** %10, align 8
  %107 = load i32, i32* %14, align 4
  %108 = call i32 %105(%struct.src.0* %106, i32 %107)
  %109 = load %struct.src.0*, %struct.src.0** %10, align 8
  %110 = getelementptr inbounds %struct.src.0, %struct.src.0* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  %113 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %112, align 8
  %114 = load %struct.src.0*, %struct.src.0** %10, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @select_rom(i32 %115)
  %117 = call i32 %113(%struct.src.0* %114, i32 %116)
  %118 = load %struct.src.0*, %struct.src.0** %10, align 8
  %119 = getelementptr inbounds %struct.src.0, %struct.src.0* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %121, align 8
  %123 = load %struct.src.0*, %struct.src.0** %10, align 8
  %124 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %125 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %124, i32 0, i32 2
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @convert_format(i32 %130)
  %132 = call i32 %122(%struct.src.0* %123, i32 %131)
  %133 = load %struct.src.0*, %struct.src.0** %10, align 8
  %134 = getelementptr inbounds %struct.src.0, %struct.src.0* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %136, align 8
  %138 = load %struct.src.0*, %struct.src.0** %10, align 8
  %139 = load %struct.src.0*, %struct.src.0** %10, align 8
  %140 = getelementptr inbounds %struct.src.0, %struct.src.0* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32* (%struct.src.0*)*, i32* (%struct.src.0*)** %142, align 8
  %144 = load %struct.src.0*, %struct.src.0** %10, align 8
  %145 = call i32* %143(%struct.src.0* %144)
  %146 = icmp ne i32* %145, null
  %147 = zext i1 %146 to i32
  %148 = call i32 %137(%struct.src.0* %138, i32 %147)
  %149 = load %struct.src.0*, %struct.src.0** %10, align 8
  %150 = getelementptr inbounds %struct.src.0, %struct.src.0* %149, i32 0, i32 0
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %152, align 8
  %154 = load %struct.src.0*, %struct.src.0** %10, align 8
  %155 = call i32 %153(%struct.src.0* %154, i32 1)
  %156 = load i32, i32* %12, align 4
  %157 = icmp slt i32 %156, 2
  br i1 %157, label %158, label %159

158:                                              ; preds = %85
  br label %161

159:                                              ; preds = %85
  %160 = load i32, i32* %12, align 4
  br label %161

161:                                              ; preds = %159, %158
  %162 = phi i32 [ 2, %158 ], [ %160, %159 ]
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 8, %164
  %166 = trunc i64 %165 to i32
  %167 = load i32, i32* @GFP_KERNEL, align 4
  %168 = call i32* @kzalloc(i32 %166, i32 %167)
  %169 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %170 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %169, i32 0, i32 1
  store i32* %168, i32** %170, align 8
  %171 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %172 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %161
  %176 = load i32, i32* @ENOMEM, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %11, align 4
  br label %223

178:                                              ; preds = %161
  %179 = getelementptr inbounds %struct.src_desc.1, %struct.src_desc.1* %8, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.amixer_desc.4, %struct.amixer_desc.4* %9, i32 0, i32 0
  store i32 %180, i32* %181, align 4
  store i32 0, i32* %13, align 4
  %182 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %183 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %182, i32 0, i32 0
  store i64 0, i64* %183, align 8
  br label %184

184:                                              ; preds = %212, %178
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %215

188:                                              ; preds = %184
  %189 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %190 = getelementptr inbounds %struct.amixer_mgr, %struct.amixer_mgr* %189, i32 0, i32 1
  %191 = load i32 (%struct.src_mgr*, %struct.amixer_desc.2*, %struct.amixer.3**)*, i32 (%struct.src_mgr*, %struct.amixer_desc.2*, %struct.amixer.3**)** %190, align 8
  %192 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %193 = bitcast %struct.amixer_mgr* %192 to %struct.src_mgr*
  %194 = bitcast %struct.amixer_desc.4* %9 to %struct.amixer_desc.2*
  %195 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %196 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = bitcast i32* %200 to %struct.amixer.5**
  %202 = bitcast %struct.amixer.5** %201 to %struct.amixer.3**
  %203 = call i32 %191(%struct.src_mgr* %193, %struct.amixer_desc.2* %194, %struct.amixer.3** %202)
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %11, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %188
  br label %223

207:                                              ; preds = %188
  %208 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %209 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %210, 1
  store i64 %211, i64* %209, align 8
  br label %212

212:                                              ; preds = %207
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %13, align 4
  br label %184

215:                                              ; preds = %184
  %216 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %217 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %218 = call i32 @ct_map_audio_buffer(%struct.ct_atc* %216, %struct.ct_atc_pcm* %217)
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  br label %223

222:                                              ; preds = %215
  store i32 0, i32* %3, align 4
  br label %228

223:                                              ; preds = %221, %206, %175, %84
  %224 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %225 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %226 = call i32 @atc_pcm_release_resources(%struct.ct_atc* %224, %struct.ct_atc_pcm* %225)
  %227 = load i32, i32* %11, align 4
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %223, %222
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @atc_pcm_release_resources(%struct.ct_atc*, %struct.ct_atc_pcm*) #2

declare dso_local i32 @atc_get_pitch(i32, i32) #2

declare dso_local i32 @select_rom(i32) #2

declare dso_local i32 @convert_format(i32) #2

declare dso_local i32* @kzalloc(i32, i32) #2

declare dso_local i32 @ct_map_audio_buffer(%struct.ct_atc*, %struct.ct_atc_pcm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
