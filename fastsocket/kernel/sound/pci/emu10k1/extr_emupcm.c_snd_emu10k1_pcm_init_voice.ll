; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_pcm_init_voice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_pcm_init_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.snd_emu10k1_voice = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }
%struct.snd_emu10k1_pcm_mixer = type { i32**, i32** }

@CPF = common dso_local global i32 0, align 4
@CPF_STEREO_MASK = common dso_local global i32 0, align 4
@A_FXRT1 = common dso_local global i32 0, align 4
@A_FXRT2 = common dso_local global i32 0, align 4
@A_SENDAMOUNTS = common dso_local global i32 0, align 4
@FXRT = common dso_local global i32 0, align 4
@PTRX = common dso_local global i32 0, align 4
@DSL = common dso_local global i32 0, align 4
@PSST = common dso_local global i32 0, align 4
@PITCH_48000 = common dso_local global i32 0, align 4
@CCCA = common dso_local global i32 0, align 4
@CCCA_8BITSELECT = common dso_local global i32 0, align 4
@Z1 = common dso_local global i32 0, align 4
@Z2 = common dso_local global i32 0, align 4
@MAP_PTI_MASK = common dso_local global i32 0, align 4
@MAPA = common dso_local global i32 0, align 4
@MAPB = common dso_local global i32 0, align 4
@CVCF = common dso_local global i32 0, align 4
@VTFT = common dso_local global i32 0, align 4
@ATKHLDM = common dso_local global i32 0, align 4
@DCYSUSM = common dso_local global i32 0, align 4
@LFOVAL1 = common dso_local global i32 0, align 4
@LFOVAL2 = common dso_local global i32 0, align 4
@FMMOD = common dso_local global i32 0, align 4
@TREMFRQ = common dso_local global i32 0, align 4
@FM2FRQ2 = common dso_local global i32 0, align 4
@ENVVAL = common dso_local global i32 0, align 4
@ATKHLDV = common dso_local global i32 0, align 4
@ENVVOL = common dso_local global i32 0, align 4
@PEFE_FILTERAMOUNT = common dso_local global i32 0, align 4
@PEFE_PITCHAMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, i32, i32, %struct.snd_emu10k1_voice*, i32, i32, %struct.snd_emu10k1_pcm_mixer*)* @snd_emu10k1_pcm_init_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_pcm_init_voice(%struct.snd_emu10k1* %0, i32 %1, i32 %2, %struct.snd_emu10k1_voice* %3, i32 %4, i32 %5, %struct.snd_emu10k1_pcm_mixer* %6) #0 {
  %8 = alloca %struct.snd_emu10k1*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_emu10k1_voice*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_emu10k1_pcm_mixer*, align 8
  %15 = alloca %struct.snd_pcm_substream*, align 8
  %16 = alloca %struct.snd_pcm_runtime*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  %23 = alloca [8 x i8], align 1
  %24 = alloca [8 x i8], align 1
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.snd_emu10k1_voice* %3, %struct.snd_emu10k1_voice** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.snd_emu10k1_pcm_mixer* %6, %struct.snd_emu10k1_pcm_mixer** %14, align 8
  %28 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %11, align 8
  %29 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %31, align 8
  store %struct.snd_pcm_substream* %32, %struct.snd_pcm_substream** %15, align 8
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %15, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 0
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %34, align 8
  store %struct.snd_pcm_runtime* %35, %struct.snd_pcm_runtime** %16, align 8
  %36 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %11, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %19, align 4
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %20, align 4
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @snd_pcm_format_width(i32 %46)
  %48 = icmp eq i32 %47, 16
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %21, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %7
  %53 = load i32, i32* %20, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  %57 = lshr i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = lshr i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %55, %52, %7
  %61 = load i32, i32* %21, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = lshr i32 %64, 1
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = lshr i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %63, %60
  %69 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %70 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %69, i32 0, i32 0
  %71 = load i64, i64* %25, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  store i8 0, i8* %22, align 1
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %24, i64 0, i64 0
  %77 = call i32 @memset(i8* %76, i32 0, i32 8)
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %24, i64 0, i64 0
  store i8 0, i8* %78, align 1
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %24, i64 0, i64 1
  store i8 1, i8* %79, align 1
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %24, i64 0, i64 2
  store i8 2, i8* %80, align 1
  %81 = getelementptr inbounds [8 x i8], [8 x i8]* %24, i64 0, i64 3
  store i8 3, i8* %81, align 1
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0
  %83 = call i32 @memset(i8* %82, i32 0, i32 8)
  br label %115

84:                                               ; preds = %68
  %85 = load i32, i32* %20, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 2
  br label %93

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %87
  %94 = phi i32 [ %91, %87 ], [ 0, %92 ]
  store i32 %94, i32* %18, align 4
  %95 = getelementptr inbounds [8 x i8], [8 x i8]* %24, i64 0, i64 0
  %96 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %14, align 8
  %97 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %96, i32 0, i32 1
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %18, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = call i32 @memcpy(i8* %95, i32* %103, i32 8)
  %105 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0
  %106 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %14, align 8
  %107 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %106, i32 0, i32 0
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %18, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = call i32 @memcpy(i8* %105, i32* %113, i32 8)
  br label %115

115:                                              ; preds = %93, %75
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %21, align 4
  %118 = call i32 @emu10k1_ccis(i32 %116, i32 %117)
  store i32 %118, i32* %27, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %162

121:                                              ; preds = %115
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %27, align 4
  %124 = add i32 %122, %123
  %125 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %11, align 8
  %126 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 8
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %121
  %132 = load i32, i32* %27, align 4
  %133 = load i32, i32* %12, align 4
  %134 = add i32 %133, %132
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %27, align 4
  %136 = load i32, i32* %13, align 4
  %137 = add i32 %136, %135
  store i32 %137, i32* %13, align 4
  br label %138

138:                                              ; preds = %131, %121
  %139 = load i32, i32* %20, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %138
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %141
  %145 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %146 = load i32, i32* @CPF, align 4
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* @CPF_STEREO_MASK, align 4
  %149 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %145, i32 %146, i32 %147, i32 %148)
  %150 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %151 = load i32, i32* @CPF, align 4
  %152 = load i32, i32* %19, align 4
  %153 = add nsw i32 %152, 1
  %154 = load i32, i32* @CPF_STEREO_MASK, align 4
  %155 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %150, i32 %151, i32 %153, i32 %154)
  br label %161

156:                                              ; preds = %141, %138
  %157 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %158 = load i32, i32* @CPF, align 4
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %157, i32 %158, i32 %159, i32 0)
  br label %161

161:                                              ; preds = %156, %144
  br label %162

162:                                              ; preds = %161, %115
  %163 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %164 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %202

167:                                              ; preds = %162
  %168 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %169 = load i32, i32* @A_FXRT1, align 4
  %170 = load i32, i32* %19, align 4
  %171 = getelementptr inbounds [8 x i8], [8 x i8]* %24, i64 0, i64 0
  %172 = call i32 @snd_emu10k1_compose_audigy_fxrt1(i8* %171)
  %173 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %168, i32 %169, i32 %170, i32 %172)
  %174 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %175 = load i32, i32* @A_FXRT2, align 4
  %176 = load i32, i32* %19, align 4
  %177 = getelementptr inbounds [8 x i8], [8 x i8]* %24, i64 0, i64 0
  %178 = call i32 @snd_emu10k1_compose_audigy_fxrt2(i8* %177)
  %179 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %174, i32 %175, i32 %176, i32 %178)
  %180 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %181 = load i32, i32* @A_SENDAMOUNTS, align 4
  %182 = load i32, i32* %19, align 4
  %183 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 4
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = shl i32 %185, 24
  %187 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 5
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = shl i32 %189, 16
  %191 = or i32 %186, %190
  %192 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 6
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = shl i32 %194, 8
  %196 = or i32 %191, %195
  %197 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 7
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = or i32 %196, %199
  %201 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %180, i32 %181, i32 %182, i32 %200)
  br label %209

202:                                              ; preds = %162
  %203 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %204 = load i32, i32* @FXRT, align 4
  %205 = load i32, i32* %19, align 4
  %206 = getelementptr inbounds [8 x i8], [8 x i8]* %24, i64 0, i64 0
  %207 = call i32 @snd_emu10k1_compose_send_routing(i8* %206)
  %208 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %203, i32 %204, i32 %205, i32 %207)
  br label %209

209:                                              ; preds = %202, %167
  %210 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %211 = load i32, i32* @PTRX, align 4
  %212 = load i32, i32* %19, align 4
  %213 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = shl i32 %215, 8
  %217 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 1
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = or i32 %216, %219
  %221 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %210, i32 %211, i32 %212, i32 %220)
  %222 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %223 = load i32, i32* @DSL, align 4
  %224 = load i32, i32* %19, align 4
  %225 = load i32, i32* %13, align 4
  %226 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 3
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = shl i32 %228, 24
  %230 = or i32 %225, %229
  %231 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %222, i32 %223, i32 %224, i32 %230)
  %232 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %233 = load i32, i32* @PSST, align 4
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* %12, align 4
  %236 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 2
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = shl i32 %238, 24
  %240 = or i32 %235, %239
  %241 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %232, i32 %233, i32 %234, i32 %240)
  %242 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %243 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %242, i32 0, i32 2
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %209
  %249 = load i32, i32* @PITCH_48000, align 4
  store i32 %249, i32* %26, align 4
  br label %255

250:                                              ; preds = %209
  %251 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  %252 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @emu10k1_calc_pitch_target(i32 %253)
  store i32 %254, i32* %26, align 4
  br label %255

255:                                              ; preds = %250, %248
  %256 = load i32, i32* %10, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %275

258:                                              ; preds = %255
  %259 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %260 = load i32, i32* @CCCA, align 4
  %261 = load i32, i32* %19, align 4
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* %26, align 4
  %264 = call i32 @emu10k1_select_interprom(i32 %263)
  %265 = or i32 %262, %264
  %266 = load i32, i32* %21, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %258
  br label %271

269:                                              ; preds = %258
  %270 = load i32, i32* @CCCA_8BITSELECT, align 4
  br label %271

271:                                              ; preds = %269, %268
  %272 = phi i32 [ 0, %268 ], [ %270, %269 ]
  %273 = or i32 %265, %272
  %274 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %259, i32 %260, i32 %261, i32 %273)
  br label %294

275:                                              ; preds = %255
  %276 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %277 = load i32, i32* @CCCA, align 4
  %278 = load i32, i32* %19, align 4
  %279 = load i32, i32* %12, align 4
  %280 = load i32, i32* %27, align 4
  %281 = add i32 %279, %280
  %282 = load i32, i32* %26, align 4
  %283 = call i32 @emu10k1_select_interprom(i32 %282)
  %284 = or i32 %281, %283
  %285 = load i32, i32* %21, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %275
  br label %290

288:                                              ; preds = %275
  %289 = load i32, i32* @CCCA_8BITSELECT, align 4
  br label %290

290:                                              ; preds = %288, %287
  %291 = phi i32 [ 0, %287 ], [ %289, %288 ]
  %292 = or i32 %284, %291
  %293 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %276, i32 %277, i32 %278, i32 %292)
  br label %294

294:                                              ; preds = %290, %271
  %295 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %296 = load i32, i32* @Z1, align 4
  %297 = load i32, i32* %19, align 4
  %298 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %295, i32 %296, i32 %297, i32 0)
  %299 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %300 = load i32, i32* @Z2, align 4
  %301 = load i32, i32* %19, align 4
  %302 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %299, i32 %300, i32 %301, i32 0)
  %303 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %304 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = trunc i64 %306 to i32
  %308 = shl i32 %307, 1
  %309 = load i32, i32* @MAP_PTI_MASK, align 4
  %310 = or i32 %308, %309
  store i32 %310, i32* %17, align 4
  %311 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %312 = load i32, i32* @MAPA, align 4
  %313 = load i32, i32* %19, align 4
  %314 = load i32, i32* %17, align 4
  %315 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %311, i32 %312, i32 %313, i32 %314)
  %316 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %317 = load i32, i32* @MAPB, align 4
  %318 = load i32, i32* %19, align 4
  %319 = load i32, i32* %17, align 4
  %320 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %316, i32 %317, i32 %318, i32 %319)
  %321 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %322 = load i32, i32* @CVCF, align 4
  %323 = load i32, i32* %19, align 4
  %324 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %321, i32 %322, i32 %323, i32 65535)
  %325 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %326 = load i32, i32* @VTFT, align 4
  %327 = load i32, i32* %19, align 4
  %328 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %325, i32 %326, i32 %327, i32 65535)
  %329 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %330 = load i32, i32* @ATKHLDM, align 4
  %331 = load i32, i32* %19, align 4
  %332 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %329, i32 %330, i32 %331, i32 0)
  %333 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %334 = load i32, i32* @DCYSUSM, align 4
  %335 = load i32, i32* %19, align 4
  %336 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %333, i32 %334, i32 %335, i32 127)
  %337 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %338 = load i32, i32* @LFOVAL1, align 4
  %339 = load i32, i32* %19, align 4
  %340 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %337, i32 %338, i32 %339, i32 32768)
  %341 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %342 = load i32, i32* @LFOVAL2, align 4
  %343 = load i32, i32* %19, align 4
  %344 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %341, i32 %342, i32 %343, i32 32768)
  %345 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %346 = load i32, i32* @FMMOD, align 4
  %347 = load i32, i32* %19, align 4
  %348 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %345, i32 %346, i32 %347, i32 0)
  %349 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %350 = load i32, i32* @TREMFRQ, align 4
  %351 = load i32, i32* %19, align 4
  %352 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %349, i32 %350, i32 %351, i32 0)
  %353 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %354 = load i32, i32* @FM2FRQ2, align 4
  %355 = load i32, i32* %19, align 4
  %356 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %353, i32 %354, i32 %355, i32 0)
  %357 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %358 = load i32, i32* @ENVVAL, align 4
  %359 = load i32, i32* %19, align 4
  %360 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %357, i32 %358, i32 %359, i32 32768)
  %361 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %362 = load i32, i32* @ATKHLDV, align 4
  %363 = load i32, i32* %19, align 4
  %364 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %361, i32 %362, i32 %363, i32 32639)
  %365 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %366 = load i32, i32* @ENVVOL, align 4
  %367 = load i32, i32* %19, align 4
  %368 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %365, i32 %366, i32 %367, i32 0)
  %369 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %370 = load i32, i32* @PEFE_FILTERAMOUNT, align 4
  %371 = load i32, i32* %19, align 4
  %372 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %369, i32 %370, i32 %371, i32 127)
  %373 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %374 = load i32, i32* @PEFE_PITCHAMOUNT, align 4
  %375 = load i32, i32* %19, align 4
  %376 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %373, i32 %374, i32 %375, i32 0)
  %377 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %378 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %377, i32 0, i32 0
  %379 = load i64, i64* %25, align 8
  %380 = call i32 @spin_unlock_irqrestore(i32* %378, i64 %379)
  ret void
}

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @emu10k1_ccis(i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_compose_audigy_fxrt1(i8*) #1

declare dso_local i32 @snd_emu10k1_compose_audigy_fxrt2(i8*) #1

declare dso_local i32 @snd_emu10k1_compose_send_routing(i8*) #1

declare dso_local i32 @emu10k1_calc_pitch_target(i32) #1

declare dso_local i32 @emu10k1_select_interprom(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
