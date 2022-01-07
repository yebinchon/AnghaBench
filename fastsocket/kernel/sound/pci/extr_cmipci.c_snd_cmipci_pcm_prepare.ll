; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i32, i32, i64, i64 }
%struct.cmipci_pcm = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"cannot set dac channels\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CM_REG_CH1_FRAME1 = common dso_local global i32 0, align 4
@CM_REG_CH0_FRAME1 = common dso_local global i32 0, align 4
@CM_REG_CH1_FRAME2 = common dso_local global i32 0, align 4
@CM_REG_CH0_FRAME2 = common dso_local global i32 0, align 4
@CM_CHADC1 = common dso_local global i32 0, align 4
@CM_CHADC0 = common dso_local global i32 0, align 4
@CM_REG_FUNCTRL0 = common dso_local global i32 0, align 4
@CM_CH0_SRATE_88K = common dso_local global i32 0, align 4
@CM_CH0_SRATE_96K = common dso_local global i32 0, align 4
@CM_CH0_SRATE_128K = common dso_local global i32 0, align 4
@CM_REG_FUNCTRL1 = common dso_local global i32 0, align 4
@CM_DSFC_MASK = common dso_local global i32 0, align 4
@CM_DSFC_SHIFT = common dso_local global i32 0, align 4
@CM_ASFC_MASK = common dso_local global i32 0, align 4
@CM_ASFC_SHIFT = common dso_local global i32 0, align 4
@CM_REG_CHFORMAT = common dso_local global i32 0, align 4
@CM_CH1FMT_MASK = common dso_local global i32 0, align 4
@CM_CH1FMT_SHIFT = common dso_local global i32 0, align 4
@CM_CH0FMT_MASK = common dso_local global i32 0, align 4
@CM_CH0FMT_SHIFT = common dso_local global i32 0, align 4
@CM_CH0_SRATE_MASK = common dso_local global i32 0, align 4
@CM_REG_EXT_MISC = common dso_local global i32 0, align 4
@CM_ADC48K44K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmipci*, %struct.cmipci_pcm*, %struct.snd_pcm_substream*)* @snd_cmipci_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_pcm_prepare(%struct.cmipci* %0, %struct.cmipci_pcm* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmipci*, align 8
  %6 = alloca %struct.cmipci_pcm*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.cmipci* %0, %struct.cmipci** %5, align 8
  store %struct.cmipci_pcm* %1, %struct.cmipci_pcm** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %13, align 8
  %17 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %18 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %20 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snd_pcm_format_width(i32 %23)
  %25 = icmp sge i32 %24, 16
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, 2
  store i32 %30, i32* %28, align 8
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snd_pcm_format_width(i32 %33)
  %35 = icmp sgt i32 %34, 16
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %38 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %26
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %49 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %54 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %59 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @set_dac_channels(%struct.cmipci* %58, %struct.cmipci_pcm* %59, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = call i32 @snd_printd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %338

69:                                               ; preds = %57, %52
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %74 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %79 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %77, %80
  %82 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %83 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %88 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %86, %89
  store i32 %90, i32* %12, align 4
  %91 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %92 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %93, 2
  br i1 %94, label %95, label %112

95:                                               ; preds = %69
  %96 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %97 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %98, %101
  %103 = sdiv i32 %102, 2
  %104 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %105 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %108 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = mul i32 %106, %109
  %111 = udiv i32 %110, 2
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %95, %69
  %113 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %114 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %113, i32 0, i32 1
  %115 = call i32 @spin_lock_irq(i32* %114)
  %116 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %117 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* @CM_REG_CH1_FRAME1, align 4
  br label %124

122:                                              ; preds = %112
  %123 = load i32, i32* @CM_REG_CH0_FRAME1, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  store i32 %125, i32* %8, align 4
  %126 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %129 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @snd_cmipci_write(%struct.cmipci* %126, i32 %127, i32 %130)
  %132 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %133 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = load i32, i32* @CM_REG_CH1_FRAME2, align 4
  br label %140

138:                                              ; preds = %124
  %139 = load i32, i32* @CM_REG_CH0_FRAME2, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %137, %136 ], [ %139, %138 ]
  store i32 %141, i32* %8, align 4
  %142 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %145 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 1
  %148 = call i32 @snd_cmipci_write_w(%struct.cmipci* %142, i32 %143, i32 %147)
  %149 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %150 = load i32, i32* %8, align 4
  %151 = add i32 %150, 2
  %152 = load i32, i32* %12, align 4
  %153 = sub i32 %152, 1
  %154 = call i32 @snd_cmipci_write_w(%struct.cmipci* %149, i32 %151, i32 %153)
  %155 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %156 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %140
  %160 = load i32, i32* @CM_CHADC1, align 4
  br label %163

161:                                              ; preds = %140
  %162 = load i32, i32* @CM_CHADC0, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  store i32 %164, i32* %11, align 4
  %165 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %166 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = load i32, i32* %11, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %173 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %182

176:                                              ; preds = %163
  %177 = load i32, i32* %11, align 4
  %178 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %179 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %176, %169
  %183 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %184 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %185 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %186 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @snd_cmipci_write(%struct.cmipci* %183, i32 %184, i32 %187)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %189 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %190 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = icmp sgt i32 %191, 48000
  br i1 %192, label %193, label %206

193:                                              ; preds = %182
  %194 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %195 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  switch i32 %196, label %203 [
    i32 88200, label %197
    i32 96000, label %199
    i32 128000, label %201
  ]

197:                                              ; preds = %193
  %198 = load i32, i32* @CM_CH0_SRATE_88K, align 4
  store i32 %198, i32* %10, align 4
  br label %205

199:                                              ; preds = %193
  %200 = load i32, i32* @CM_CH0_SRATE_96K, align 4
  store i32 %200, i32* %10, align 4
  br label %205

201:                                              ; preds = %193
  %202 = load i32, i32* @CM_CH0_SRATE_128K, align 4
  store i32 %202, i32* %10, align 4
  br label %205

203:                                              ; preds = %193
  %204 = call i32 (...) @snd_BUG()
  br label %205

205:                                              ; preds = %203, %201, %199, %197
  br label %211

206:                                              ; preds = %182
  %207 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %208 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @snd_cmipci_rate_freq(i32 %209)
  store i32 %210, i32* %9, align 4
  br label %211

211:                                              ; preds = %206, %205
  %212 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %213 = load i32, i32* @CM_REG_FUNCTRL1, align 4
  %214 = call i32 @snd_cmipci_read(%struct.cmipci* %212, i32 %213)
  store i32 %214, i32* %11, align 4
  %215 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %216 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %211
  %220 = load i32, i32* @CM_DSFC_MASK, align 4
  %221 = xor i32 %220, -1
  %222 = load i32, i32* %11, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %11, align 4
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* @CM_DSFC_SHIFT, align 4
  %226 = shl i32 %224, %225
  %227 = load i32, i32* @CM_DSFC_MASK, align 4
  %228 = and i32 %226, %227
  %229 = load i32, i32* %11, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %11, align 4
  br label %243

231:                                              ; preds = %211
  %232 = load i32, i32* @CM_ASFC_MASK, align 4
  %233 = xor i32 %232, -1
  %234 = load i32, i32* %11, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* @CM_ASFC_SHIFT, align 4
  %238 = shl i32 %236, %237
  %239 = load i32, i32* @CM_ASFC_MASK, align 4
  %240 = and i32 %238, %239
  %241 = load i32, i32* %11, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %11, align 4
  br label %243

243:                                              ; preds = %231, %219
  %244 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %245 = load i32, i32* @CM_REG_FUNCTRL1, align 4
  %246 = load i32, i32* %11, align 4
  %247 = call i32 @snd_cmipci_write(%struct.cmipci* %244, i32 %245, i32 %246)
  %248 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %249 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %250 = call i32 @snd_cmipci_read(%struct.cmipci* %248, i32 %249)
  store i32 %250, i32* %11, align 4
  %251 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %252 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %267

255:                                              ; preds = %243
  %256 = load i32, i32* @CM_CH1FMT_MASK, align 4
  %257 = xor i32 %256, -1
  %258 = load i32, i32* %11, align 4
  %259 = and i32 %258, %257
  store i32 %259, i32* %11, align 4
  %260 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %261 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @CM_CH1FMT_SHIFT, align 4
  %264 = shl i32 %262, %263
  %265 = load i32, i32* %11, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %11, align 4
  br label %279

267:                                              ; preds = %243
  %268 = load i32, i32* @CM_CH0FMT_MASK, align 4
  %269 = xor i32 %268, -1
  %270 = load i32, i32* %11, align 4
  %271 = and i32 %270, %269
  store i32 %271, i32* %11, align 4
  %272 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %273 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @CM_CH0FMT_SHIFT, align 4
  %276 = shl i32 %274, %275
  %277 = load i32, i32* %11, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %11, align 4
  br label %279

279:                                              ; preds = %267, %255
  %280 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %281 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %302

284:                                              ; preds = %279
  %285 = load i32, i32* @CM_CH0_SRATE_MASK, align 4
  %286 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %287 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = mul nsw i32 %288, 2
  %290 = shl i32 %285, %289
  %291 = xor i32 %290, -1
  %292 = load i32, i32* %11, align 4
  %293 = and i32 %292, %291
  store i32 %293, i32* %11, align 4
  %294 = load i32, i32* %10, align 4
  %295 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %296 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = mul nsw i32 %297, 2
  %299 = shl i32 %294, %298
  %300 = load i32, i32* %11, align 4
  %301 = or i32 %300, %299
  store i32 %301, i32* %11, align 4
  br label %302

302:                                              ; preds = %284, %279
  %303 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %304 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %305 = load i32, i32* %11, align 4
  %306 = call i32 @snd_cmipci_write(%struct.cmipci* %303, i32 %304, i32 %305)
  %307 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %308 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %307, i32 0, i32 6
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %332, label %311

311:                                              ; preds = %302
  %312 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %313 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %332

316:                                              ; preds = %311
  %317 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %318 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 4
  %320 = icmp sgt i32 %319, 44100
  br i1 %320, label %321, label %326

321:                                              ; preds = %316
  %322 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %323 = load i32, i32* @CM_REG_EXT_MISC, align 4
  %324 = load i32, i32* @CM_ADC48K44K, align 4
  %325 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %322, i32 %323, i32 %324)
  br label %331

326:                                              ; preds = %316
  %327 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %328 = load i32, i32* @CM_REG_EXT_MISC, align 4
  %329 = load i32, i32* @CM_ADC48K44K, align 4
  %330 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %327, i32 %328, i32 %329)
  br label %331

331:                                              ; preds = %326, %321
  br label %332

332:                                              ; preds = %331, %311, %302
  %333 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %334 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %333, i32 0, i32 5
  store i64 0, i64* %334, align 8
  %335 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %336 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %335, i32 0, i32 1
  %337 = call i32 @spin_unlock_irq(i32* %336)
  store i32 0, i32* %4, align 4
  br label %338

338:                                              ; preds = %332, %65
  %339 = load i32, i32* %4, align 4
  ret i32 %339
}

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i64 @set_dac_channels(%struct.cmipci*, %struct.cmipci_pcm*, i32) #1

declare dso_local i32 @snd_printd(i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_write(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_write_w(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @snd_cmipci_rate_freq(i32) #1

declare dso_local i32 @snd_cmipci_read(%struct.cmipci*, i32) #1

declare dso_local i32 @snd_cmipci_set_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_clear_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
