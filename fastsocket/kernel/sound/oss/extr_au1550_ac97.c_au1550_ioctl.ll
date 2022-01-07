; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_au1550_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_au1550_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32, i32, i32, i64 }
%struct.au1550_state = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i8*, i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@SOUND_VERSION = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@DSP_CAP_DUPLEX = common dso_local global i32 0, align 4
@DSP_CAP_REALTIME = common dso_local global i32 0, align 4
@DSP_CAP_TRIGGER = common dso_local global i32 0, align 4
@DSP_CAP_MMAP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@AC97_EXT_DACS = common dso_local global i32 0, align 4
@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@AC97_EXTSTAT_PRI = common dso_local global i32 0, align 4
@AC97_EXTSTAT_PRJ = common dso_local global i32 0, align 4
@AC97_EXTSTAT_PRK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AC97_EXTID_SDAC = common dso_local global i32 0, align 4
@AFMT_S16_LE = common dso_local global i32 0, align 4
@AFMT_U8 = common dso_local global i32 0, align 4
@AFMT_QUERY = common dso_local global i32 0, align 4
@PCM_ENABLE_INPUT = common dso_local global i32 0, align 4
@PCM_ENABLE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"ioctl SNDCTL_DSP_GETOSPACE: bytes=%d, fragments=%d\0A\00", align 1
@ioctl_str = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i64)* @au1550_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.au1550_state*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %22 = load %struct.file*, %struct.file** %7, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.au1550_state*
  store %struct.au1550_state* %25, %struct.au1550_state** %10, align 8
  %26 = load %struct.file*, %struct.file** %7, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FMODE_WRITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %34 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %32, %4
  %39 = load %struct.file*, %struct.file** %7, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FMODE_READ, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %47 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %45, %38
  %52 = phi i1 [ false, %38 ], [ %50, %45 ]
  br label %53

53:                                               ; preds = %51, %32
  %54 = phi i1 [ true, %32 ], [ %52, %51 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %8, align 4
  switch i32 %56, label %1428 [
    i32 155, label %57
    i32 133, label %62
    i32 141, label %78
    i32 152, label %79
    i32 142, label %90
    i32 136, label %145
    i32 135, label %234
    i32 154, label %315
    i32 151, label %472
    i32 140, label %479
    i32 143, label %588
    i32 145, label %589
    i32 137, label %636
    i32 146, label %700
    i32 149, label %778
    i32 144, label %845
    i32 148, label %857
    i32 150, label %899
    i32 147, label %1009
    i32 153, label %1119
    i32 139, label %1142
    i32 134, label %1266
    i32 129, label %1357
    i32 131, label %1379
    i32 132, label %1402
    i32 128, label %1425
    i32 138, label %1425
    i32 130, label %1425
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* @SOUND_VERSION, align 4
  %59 = load i64, i64* %9, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = call i32 @put_user(i32 %58, i32* %60)
  store i32 %61, i32* %5, align 4
  br label %1435

62:                                               ; preds = %53
  %63 = load %struct.file*, %struct.file** %7, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @FMODE_WRITE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %71 = load %struct.file*, %struct.file** %7, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @O_NONBLOCK, align 4
  %75 = and i32 %73, %74
  %76 = call i32 @drain_dac(%struct.au1550_state* %70, i32 %75)
  store i32 %76, i32* %5, align 4
  br label %1435

77:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %1435

78:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %1435

79:                                               ; preds = %53
  %80 = load i32, i32* @DSP_CAP_DUPLEX, align 4
  %81 = load i32, i32* @DSP_CAP_REALTIME, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @DSP_CAP_TRIGGER, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @DSP_CAP_MMAP, align 4
  %86 = or i32 %84, %85
  %87 = load i64, i64* %9, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = call i32 @put_user(i32 %86, i32* %88)
  store i32 %89, i32* %5, align 4
  br label %1435

90:                                               ; preds = %53
  %91 = load %struct.file*, %struct.file** %7, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @FMODE_WRITE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %90
  %98 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %99 = call i32 @stop_dac(%struct.au1550_state* %98)
  %100 = call i32 (...) @synchronize_irq()
  %101 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %102 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  store i32 0, i32* %103, align 4
  %104 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %105 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %108 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 13
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %112 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 14
  store i32 %110, i32* %113, align 4
  %114 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %115 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 16
  store i32 %110, i32* %116, align 4
  br label %117

117:                                              ; preds = %97, %90
  %118 = load %struct.file*, %struct.file** %7, align 8
  %119 = getelementptr inbounds %struct.file, %struct.file* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @FMODE_READ, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %144

124:                                              ; preds = %117
  %125 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %126 = call i32 @stop_adc(%struct.au1550_state* %125)
  %127 = call i32 (...) @synchronize_irq()
  %128 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %129 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  store i32 0, i32* %130, align 4
  %131 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %132 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  store i32 0, i32* %133, align 4
  %134 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %135 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 13
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %139 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 14
  store i32 %137, i32* %140, align 4
  %141 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %142 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 16
  store i32 %137, i32* %143, align 4
  br label %144

144:                                              ; preds = %124, %117
  store i32 0, i32* %5, align 4
  br label %1435

145:                                              ; preds = %53
  %146 = load i32, i32* %15, align 4
  %147 = load i64, i64* %9, align 8
  %148 = inttoptr i64 %147 to i32*
  %149 = call i32 @get_user(i32 %146, i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load i32, i32* @EFAULT, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %5, align 4
  br label %1435

154:                                              ; preds = %145
  %155 = load i32, i32* %15, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %212

157:                                              ; preds = %154
  %158 = load %struct.file*, %struct.file** %7, align 8
  %159 = getelementptr inbounds %struct.file, %struct.file* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @FMODE_READ, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %157
  %165 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %166 = call i32 @stop_adc(%struct.au1550_state* %165)
  %167 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %168 = load i32, i32* %15, align 4
  %169 = call i32 @set_adc_rate(%struct.au1550_state* %167, i32 %168)
  br label %170

170:                                              ; preds = %164, %157
  %171 = load %struct.file*, %struct.file** %7, align 8
  %172 = getelementptr inbounds %struct.file, %struct.file* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @FMODE_WRITE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %170
  %178 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %179 = call i32 @stop_dac(%struct.au1550_state* %178)
  %180 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @set_dac_rate(%struct.au1550_state* %180, i32 %181)
  br label %183

183:                                              ; preds = %177, %170
  %184 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %185 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @FMODE_READ, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %183
  %191 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %192 = call i32 @prog_dmabuf_adc(%struct.au1550_state* %191)
  store i32 %192, i32* %17, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i32, i32* %17, align 4
  store i32 %195, i32* %5, align 4
  br label %1435

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %196, %183
  %198 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %199 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @FMODE_WRITE, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %197
  %205 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %206 = call i32 @prog_dmabuf_dac(%struct.au1550_state* %205)
  store i32 %206, i32* %17, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = load i32, i32* %17, align 4
  store i32 %209, i32* %5, align 4
  br label %1435

210:                                              ; preds = %204
  br label %211

211:                                              ; preds = %210, %197
  br label %212

212:                                              ; preds = %211, %154
  %213 = load %struct.file*, %struct.file** %7, align 8
  %214 = getelementptr inbounds %struct.file, %struct.file* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @FMODE_READ, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %212
  %220 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %221 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  br label %229

224:                                              ; preds = %212
  %225 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %226 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  br label %229

229:                                              ; preds = %224, %219
  %230 = phi i32 [ %223, %219 ], [ %228, %224 ]
  %231 = load i64, i64* %9, align 8
  %232 = inttoptr i64 %231 to i32*
  %233 = call i32 @put_user(i32 %230, i32* %232)
  store i32 %233, i32* %5, align 4
  br label %1435

234:                                              ; preds = %53
  %235 = load i32, i32* %15, align 4
  %236 = load i64, i64* %9, align 8
  %237 = inttoptr i64 %236 to i32*
  %238 = call i32 @get_user(i32 %235, i32* %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %234
  %241 = load i32, i32* @EFAULT, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %5, align 4
  br label %1435

243:                                              ; preds = %234
  %244 = load %struct.file*, %struct.file** %7, align 8
  %245 = getelementptr inbounds %struct.file, %struct.file* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @FMODE_READ, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %266

250:                                              ; preds = %243
  %251 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %252 = call i32 @stop_adc(%struct.au1550_state* %251)
  %253 = load i32, i32* %15, align 4
  %254 = icmp ne i32 %253, 0
  %255 = zext i1 %254 to i64
  %256 = select i1 %254, i32 2, i32 1
  %257 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %258 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %257, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 4
  store i32 %256, i32* %259, align 4
  %260 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %261 = call i32 @prog_dmabuf_adc(%struct.au1550_state* %260)
  store i32 %261, i32* %17, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %250
  %264 = load i32, i32* %17, align 4
  store i32 %264, i32* %5, align 4
  br label %1435

265:                                              ; preds = %250
  br label %266

266:                                              ; preds = %265, %243
  %267 = load %struct.file*, %struct.file** %7, align 8
  %268 = getelementptr inbounds %struct.file, %struct.file* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @FMODE_WRITE, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %314

273:                                              ; preds = %266
  %274 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %275 = call i32 @stop_dac(%struct.au1550_state* %274)
  %276 = load i32, i32* %15, align 4
  %277 = icmp ne i32 %276, 0
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i32 2, i32 1
  %280 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %281 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 4
  store i32 %279, i32* %282, align 4
  %283 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %284 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @AC97_EXT_DACS, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %307

289:                                              ; preds = %273
  %290 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %291 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %294 = call i32 @rdcodec(i32 %292, i32 %293)
  store i32 %294, i32* %19, align 4
  %295 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %296 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %299 = load i32, i32* %19, align 4
  %300 = load i32, i32* @AC97_EXTSTAT_PRI, align 4
  %301 = load i32, i32* @AC97_EXTSTAT_PRJ, align 4
  %302 = or i32 %300, %301
  %303 = load i32, i32* @AC97_EXTSTAT_PRK, align 4
  %304 = or i32 %302, %303
  %305 = or i32 %299, %304
  %306 = call i32 @wrcodec(i32 %297, i32 %298, i32 %305)
  br label %307

307:                                              ; preds = %289, %273
  %308 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %309 = call i32 @prog_dmabuf_dac(%struct.au1550_state* %308)
  store i32 %309, i32* %17, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %307
  %312 = load i32, i32* %17, align 4
  store i32 %312, i32* %5, align 4
  br label %1435

313:                                              ; preds = %307
  br label %314

314:                                              ; preds = %313, %266
  store i32 0, i32* %5, align 4
  br label %1435

315:                                              ; preds = %53
  %316 = load i32, i32* %15, align 4
  %317 = load i64, i64* %9, align 8
  %318 = inttoptr i64 %317 to i32*
  %319 = call i32 @get_user(i32 %316, i32* %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %315
  %322 = load i32, i32* @EFAULT, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %5, align 4
  br label %1435

324:                                              ; preds = %315
  %325 = load i32, i32* %15, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %467

327:                                              ; preds = %324
  %328 = load %struct.file*, %struct.file** %7, align 8
  %329 = getelementptr inbounds %struct.file, %struct.file* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @FMODE_READ, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %356

334:                                              ; preds = %327
  %335 = load i32, i32* %15, align 4
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %334
  %338 = load i32, i32* %15, align 4
  %339 = icmp sgt i32 %338, 2
  br i1 %339, label %340, label %343

340:                                              ; preds = %337, %334
  %341 = load i32, i32* @EINVAL, align 4
  %342 = sub nsw i32 0, %341
  store i32 %342, i32* %5, align 4
  br label %1435

343:                                              ; preds = %337
  %344 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %345 = call i32 @stop_adc(%struct.au1550_state* %344)
  %346 = load i32, i32* %15, align 4
  %347 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %348 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %347, i32 0, i32 4
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 4
  store i32 %346, i32* %349, align 4
  %350 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %351 = call i32 @prog_dmabuf_adc(%struct.au1550_state* %350)
  store i32 %351, i32* %17, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %343
  %354 = load i32, i32* %17, align 4
  store i32 %354, i32* %5, align 4
  br label %1435

355:                                              ; preds = %343
  br label %356

356:                                              ; preds = %355, %327
  %357 = load %struct.file*, %struct.file** %7, align 8
  %358 = getelementptr inbounds %struct.file, %struct.file* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @FMODE_WRITE, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %466

363:                                              ; preds = %356
  %364 = load i32, i32* %15, align 4
  switch i32 %364, label %392 [
    i32 1, label %365
    i32 2, label %365
    i32 3, label %366
    i32 5, label %366
    i32 4, label %369
    i32 6, label %380
  ]

365:                                              ; preds = %363, %363
  br label %395

366:                                              ; preds = %363, %363
  %367 = load i32, i32* @EINVAL, align 4
  %368 = sub nsw i32 0, %367
  store i32 %368, i32* %5, align 4
  br label %1435

369:                                              ; preds = %363
  %370 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %371 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @AC97_EXTID_SDAC, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %379, label %376

376:                                              ; preds = %369
  %377 = load i32, i32* @EINVAL, align 4
  %378 = sub nsw i32 0, %377
  store i32 %378, i32* %5, align 4
  br label %1435

379:                                              ; preds = %369
  br label %395

380:                                              ; preds = %363
  %381 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %382 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @AC97_EXT_DACS, align 4
  %385 = and i32 %383, %384
  %386 = load i32, i32* @AC97_EXT_DACS, align 4
  %387 = icmp ne i32 %385, %386
  br i1 %387, label %388, label %391

388:                                              ; preds = %380
  %389 = load i32, i32* @EINVAL, align 4
  %390 = sub nsw i32 0, %389
  store i32 %390, i32* %5, align 4
  br label %1435

391:                                              ; preds = %380
  br label %395

392:                                              ; preds = %363
  %393 = load i32, i32* @EINVAL, align 4
  %394 = sub nsw i32 0, %393
  store i32 %394, i32* %5, align 4
  br label %1435

395:                                              ; preds = %391, %379, %365
  %396 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %397 = call i32 @stop_dac(%struct.au1550_state* %396)
  %398 = load i32, i32* %15, align 4
  %399 = icmp sle i32 %398, 2
  br i1 %399, label %400, label %425

400:                                              ; preds = %395
  %401 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %402 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @AC97_EXT_DACS, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %425

407:                                              ; preds = %400
  %408 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %409 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %412 = call i32 @rdcodec(i32 %410, i32 %411)
  store i32 %412, i32* %20, align 4
  %413 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %414 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %417 = load i32, i32* %20, align 4
  %418 = load i32, i32* @AC97_EXTSTAT_PRI, align 4
  %419 = load i32, i32* @AC97_EXTSTAT_PRJ, align 4
  %420 = or i32 %418, %419
  %421 = load i32, i32* @AC97_EXTSTAT_PRK, align 4
  %422 = or i32 %420, %421
  %423 = or i32 %417, %422
  %424 = call i32 @wrcodec(i32 %415, i32 %416, i32 %423)
  br label %455

425:                                              ; preds = %400, %395
  %426 = load i32, i32* %15, align 4
  %427 = icmp sge i32 %426, 4
  br i1 %427, label %428, label %454

428:                                              ; preds = %425
  %429 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %430 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 4
  %432 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %433 = call i32 @rdcodec(i32 %431, i32 %432)
  store i32 %433, i32* %21, align 4
  %434 = load i32, i32* @AC97_EXTSTAT_PRJ, align 4
  %435 = xor i32 %434, -1
  %436 = load i32, i32* %21, align 4
  %437 = and i32 %436, %435
  store i32 %437, i32* %21, align 4
  %438 = load i32, i32* %15, align 4
  %439 = icmp eq i32 %438, 6
  br i1 %439, label %440, label %447

440:                                              ; preds = %428
  %441 = load i32, i32* @AC97_EXTSTAT_PRI, align 4
  %442 = load i32, i32* @AC97_EXTSTAT_PRK, align 4
  %443 = or i32 %441, %442
  %444 = xor i32 %443, -1
  %445 = load i32, i32* %21, align 4
  %446 = and i32 %445, %444
  store i32 %446, i32* %21, align 4
  br label %447

447:                                              ; preds = %440, %428
  %448 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %449 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %452 = load i32, i32* %21, align 4
  %453 = call i32 @wrcodec(i32 %450, i32 %451, i32 %452)
  br label %454

454:                                              ; preds = %447, %425
  br label %455

455:                                              ; preds = %454, %407
  %456 = load i32, i32* %15, align 4
  %457 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %458 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %457, i32 0, i32 3
  %459 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %458, i32 0, i32 4
  store i32 %456, i32* %459, align 4
  %460 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %461 = call i32 @prog_dmabuf_dac(%struct.au1550_state* %460)
  store i32 %461, i32* %17, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %465

463:                                              ; preds = %455
  %464 = load i32, i32* %17, align 4
  store i32 %464, i32* %5, align 4
  br label %1435

465:                                              ; preds = %455
  br label %466

466:                                              ; preds = %465, %356
  br label %467

467:                                              ; preds = %466, %324
  %468 = load i32, i32* %15, align 4
  %469 = load i64, i64* %9, align 8
  %470 = inttoptr i64 %469 to i32*
  %471 = call i32 @put_user(i32 %468, i32* %470)
  store i32 %471, i32* %5, align 4
  br label %1435

472:                                              ; preds = %53
  %473 = load i32, i32* @AFMT_S16_LE, align 4
  %474 = load i32, i32* @AFMT_U8, align 4
  %475 = or i32 %473, %474
  %476 = load i64, i64* %9, align 8
  %477 = inttoptr i64 %476 to i32*
  %478 = call i32 @put_user(i32 %475, i32* %477)
  store i32 %478, i32* %5, align 4
  br label %1435

479:                                              ; preds = %53
  %480 = load i32, i32* %15, align 4
  %481 = load i64, i64* %9, align 8
  %482 = inttoptr i64 %481 to i32*
  %483 = call i32 @get_user(i32 %480, i32* %482)
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %488

485:                                              ; preds = %479
  %486 = load i32, i32* @EFAULT, align 4
  %487 = sub nsw i32 0, %486
  store i32 %487, i32* %5, align 4
  br label %1435

488:                                              ; preds = %479
  %489 = load i32, i32* %15, align 4
  %490 = load i32, i32* @AFMT_QUERY, align 4
  %491 = icmp ne i32 %489, %490
  br i1 %491, label %492, label %551

492:                                              ; preds = %488
  %493 = load %struct.file*, %struct.file** %7, align 8
  %494 = getelementptr inbounds %struct.file, %struct.file* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = load i32, i32* @FMODE_READ, align 4
  %497 = and i32 %495, %496
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %521

499:                                              ; preds = %492
  %500 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %501 = call i32 @stop_adc(%struct.au1550_state* %500)
  %502 = load i32, i32* %15, align 4
  %503 = load i32, i32* @AFMT_S16_LE, align 4
  %504 = icmp eq i32 %502, %503
  br i1 %504, label %505, label %509

505:                                              ; preds = %499
  %506 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %507 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %506, i32 0, i32 4
  %508 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %507, i32 0, i32 5
  store i32 16, i32* %508, align 4
  br label %514

509:                                              ; preds = %499
  %510 = load i32, i32* @AFMT_U8, align 4
  store i32 %510, i32* %15, align 4
  %511 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %512 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %511, i32 0, i32 4
  %513 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %512, i32 0, i32 5
  store i32 8, i32* %513, align 4
  br label %514

514:                                              ; preds = %509, %505
  %515 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %516 = call i32 @prog_dmabuf_adc(%struct.au1550_state* %515)
  store i32 %516, i32* %17, align 4
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %520

518:                                              ; preds = %514
  %519 = load i32, i32* %17, align 4
  store i32 %519, i32* %5, align 4
  br label %1435

520:                                              ; preds = %514
  br label %521

521:                                              ; preds = %520, %492
  %522 = load %struct.file*, %struct.file** %7, align 8
  %523 = getelementptr inbounds %struct.file, %struct.file* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = load i32, i32* @FMODE_WRITE, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %550

528:                                              ; preds = %521
  %529 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %530 = call i32 @stop_dac(%struct.au1550_state* %529)
  %531 = load i32, i32* %15, align 4
  %532 = load i32, i32* @AFMT_S16_LE, align 4
  %533 = icmp eq i32 %531, %532
  br i1 %533, label %534, label %538

534:                                              ; preds = %528
  %535 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %536 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %535, i32 0, i32 3
  %537 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %536, i32 0, i32 5
  store i32 16, i32* %537, align 4
  br label %543

538:                                              ; preds = %528
  %539 = load i32, i32* @AFMT_U8, align 4
  store i32 %539, i32* %15, align 4
  %540 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %541 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %540, i32 0, i32 3
  %542 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %541, i32 0, i32 5
  store i32 8, i32* %542, align 4
  br label %543

543:                                              ; preds = %538, %534
  %544 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %545 = call i32 @prog_dmabuf_dac(%struct.au1550_state* %544)
  store i32 %545, i32* %17, align 4
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %549

547:                                              ; preds = %543
  %548 = load i32, i32* %17, align 4
  store i32 %548, i32* %5, align 4
  br label %1435

549:                                              ; preds = %543
  br label %550

550:                                              ; preds = %549, %521
  br label %583

551:                                              ; preds = %488
  %552 = load %struct.file*, %struct.file** %7, align 8
  %553 = getelementptr inbounds %struct.file, %struct.file* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 8
  %555 = load i32, i32* @FMODE_READ, align 4
  %556 = and i32 %554, %555
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %570

558:                                              ; preds = %551
  %559 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %560 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %559, i32 0, i32 4
  %561 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %560, i32 0, i32 5
  %562 = load i32, i32* %561, align 4
  %563 = icmp eq i32 %562, 16
  br i1 %563, label %564, label %566

564:                                              ; preds = %558
  %565 = load i32, i32* @AFMT_S16_LE, align 4
  br label %568

566:                                              ; preds = %558
  %567 = load i32, i32* @AFMT_U8, align 4
  br label %568

568:                                              ; preds = %566, %564
  %569 = phi i32 [ %565, %564 ], [ %567, %566 ]
  store i32 %569, i32* %15, align 4
  br label %582

570:                                              ; preds = %551
  %571 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %572 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %571, i32 0, i32 3
  %573 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %572, i32 0, i32 5
  %574 = load i32, i32* %573, align 4
  %575 = icmp eq i32 %574, 16
  br i1 %575, label %576, label %578

576:                                              ; preds = %570
  %577 = load i32, i32* @AFMT_S16_LE, align 4
  br label %580

578:                                              ; preds = %570
  %579 = load i32, i32* @AFMT_U8, align 4
  br label %580

580:                                              ; preds = %578, %576
  %581 = phi i32 [ %577, %576 ], [ %579, %578 ]
  store i32 %581, i32* %15, align 4
  br label %582

582:                                              ; preds = %580, %568
  br label %583

583:                                              ; preds = %582, %550
  %584 = load i32, i32* %15, align 4
  %585 = load i64, i64* %9, align 8
  %586 = inttoptr i64 %585 to i32*
  %587 = call i32 @put_user(i32 %584, i32* %586)
  store i32 %587, i32* %5, align 4
  br label %1435

588:                                              ; preds = %53
  store i32 0, i32* %5, align 4
  br label %1435

589:                                              ; preds = %53
  store i32 0, i32* %15, align 4
  %590 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %591 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %590, i32 0, i32 5
  %592 = load i64, i64* %11, align 8
  %593 = call i32 @spin_lock_irqsave(i32* %591, i64 %592)
  %594 = load %struct.file*, %struct.file** %7, align 8
  %595 = getelementptr inbounds %struct.file, %struct.file* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 8
  %597 = load i32, i32* @FMODE_READ, align 4
  %598 = and i32 %596, %597
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %610

600:                                              ; preds = %589
  %601 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %602 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %601, i32 0, i32 4
  %603 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %602, i32 0, i32 15
  %604 = load i32, i32* %603, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %610, label %606

606:                                              ; preds = %600
  %607 = load i32, i32* @PCM_ENABLE_INPUT, align 4
  %608 = load i32, i32* %15, align 4
  %609 = or i32 %608, %607
  store i32 %609, i32* %15, align 4
  br label %610

610:                                              ; preds = %606, %600, %589
  %611 = load %struct.file*, %struct.file** %7, align 8
  %612 = getelementptr inbounds %struct.file, %struct.file* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = load i32, i32* @FMODE_WRITE, align 4
  %615 = and i32 %613, %614
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %627

617:                                              ; preds = %610
  %618 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %619 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %618, i32 0, i32 3
  %620 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %619, i32 0, i32 15
  %621 = load i32, i32* %620, align 4
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %627, label %623

623:                                              ; preds = %617
  %624 = load i32, i32* @PCM_ENABLE_OUTPUT, align 4
  %625 = load i32, i32* %15, align 4
  %626 = or i32 %625, %624
  store i32 %626, i32* %15, align 4
  br label %627

627:                                              ; preds = %623, %617, %610
  %628 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %629 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %628, i32 0, i32 5
  %630 = load i64, i64* %11, align 8
  %631 = call i32 @spin_unlock_irqrestore(i32* %629, i64 %630)
  %632 = load i32, i32* %15, align 4
  %633 = load i64, i64* %9, align 8
  %634 = inttoptr i64 %633 to i32*
  %635 = call i32 @put_user(i32 %632, i32* %634)
  store i32 %635, i32* %5, align 4
  br label %1435

636:                                              ; preds = %53
  %637 = load i32, i32* %15, align 4
  %638 = load i64, i64* %9, align 8
  %639 = inttoptr i64 %638 to i32*
  %640 = call i32 @get_user(i32 %637, i32* %639)
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %645

642:                                              ; preds = %636
  %643 = load i32, i32* @EFAULT, align 4
  %644 = sub nsw i32 0, %643
  store i32 %644, i32* %5, align 4
  br label %1435

645:                                              ; preds = %636
  %646 = load %struct.file*, %struct.file** %7, align 8
  %647 = getelementptr inbounds %struct.file, %struct.file* %646, i32 0, i32 0
  %648 = load i32, i32* %647, align 8
  %649 = load i32, i32* @FMODE_READ, align 4
  %650 = and i32 %648, %649
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %652, label %672

652:                                              ; preds = %645
  %653 = load i32, i32* %15, align 4
  %654 = load i32, i32* @PCM_ENABLE_INPUT, align 4
  %655 = and i32 %653, %654
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %668

657:                                              ; preds = %652
  %658 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %659 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %658, i32 0, i32 5
  %660 = load i64, i64* %11, align 8
  %661 = call i32 @spin_lock_irqsave(i32* %659, i64 %660)
  %662 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %663 = call i32 @start_adc(%struct.au1550_state* %662)
  %664 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %665 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %664, i32 0, i32 5
  %666 = load i64, i64* %11, align 8
  %667 = call i32 @spin_unlock_irqrestore(i32* %665, i64 %666)
  br label %671

668:                                              ; preds = %652
  %669 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %670 = call i32 @stop_adc(%struct.au1550_state* %669)
  br label %671

671:                                              ; preds = %668, %657
  br label %672

672:                                              ; preds = %671, %645
  %673 = load %struct.file*, %struct.file** %7, align 8
  %674 = getelementptr inbounds %struct.file, %struct.file* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 8
  %676 = load i32, i32* @FMODE_WRITE, align 4
  %677 = and i32 %675, %676
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %679, label %699

679:                                              ; preds = %672
  %680 = load i32, i32* %15, align 4
  %681 = load i32, i32* @PCM_ENABLE_OUTPUT, align 4
  %682 = and i32 %680, %681
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %695

684:                                              ; preds = %679
  %685 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %686 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %685, i32 0, i32 5
  %687 = load i64, i64* %11, align 8
  %688 = call i32 @spin_lock_irqsave(i32* %686, i64 %687)
  %689 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %690 = call i32 @start_dac(%struct.au1550_state* %689)
  %691 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %692 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %691, i32 0, i32 5
  %693 = load i64, i64* %11, align 8
  %694 = call i32 @spin_unlock_irqrestore(i32* %692, i64 %693)
  br label %698

695:                                              ; preds = %679
  %696 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %697 = call i32 @stop_dac(%struct.au1550_state* %696)
  br label %698

698:                                              ; preds = %695, %684
  br label %699

699:                                              ; preds = %698, %672
  store i32 0, i32* %5, align 4
  br label %1435

700:                                              ; preds = %53
  %701 = load %struct.file*, %struct.file** %7, align 8
  %702 = getelementptr inbounds %struct.file, %struct.file* %701, i32 0, i32 0
  %703 = load i32, i32* %702, align 8
  %704 = load i32, i32* @FMODE_WRITE, align 4
  %705 = and i32 %703, %704
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %710, label %707

707:                                              ; preds = %700
  %708 = load i32, i32* @EINVAL, align 4
  %709 = sub nsw i32 0, %708
  store i32 %709, i32* %5, align 4
  br label %1435

710:                                              ; preds = %700
  %711 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %712 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %711, i32 0, i32 3
  %713 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %712, i32 0, i32 6
  %714 = load i32, i32* %713, align 4
  %715 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %714, i32* %715, align 8
  %716 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %717 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %716, i32 0, i32 5
  %718 = load i64, i64* %11, align 8
  %719 = call i32 @spin_lock_irqsave(i32* %717, i64 %718)
  %720 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %721 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %720, i32 0, i32 3
  %722 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %721, i32 0, i32 1
  %723 = load i32, i32* %722, align 4
  store i32 %723, i32* %14, align 4
  %724 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %725 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %724, i32 0, i32 3
  %726 = call i32 @dma_count_done(%struct.TYPE_9__* %725)
  %727 = load i32, i32* %14, align 4
  %728 = sub nsw i32 %727, %726
  store i32 %728, i32* %14, align 4
  %729 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %730 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %729, i32 0, i32 5
  %731 = load i64, i64* %11, align 8
  %732 = call i32 @spin_unlock_irqrestore(i32* %730, i64 %731)
  %733 = load i32, i32* %14, align 4
  %734 = icmp slt i32 %733, 0
  br i1 %734, label %735, label %736

735:                                              ; preds = %710
  store i32 0, i32* %14, align 4
  br label %736

736:                                              ; preds = %735, %710
  %737 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %738 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %737, i32 0, i32 3
  %739 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %738, i32 0, i32 18
  %740 = load i32, i32* %739, align 4
  %741 = load i32, i32* %14, align 4
  %742 = sub nsw i32 %740, %741
  %743 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %744 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %743, i32 0, i32 3
  %745 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %744, i32 0, i32 7
  %746 = load i32, i32* %745, align 4
  %747 = sdiv i32 %742, %746
  %748 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 %747, i32* %748, align 4
  %749 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %750 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %749, i32 0, i32 3
  %751 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %750, i32 0, i32 17
  %752 = load i32, i32* %751, align 4
  %753 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  store i32 %752, i32* %753, align 8
  %754 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %755 = load i32, i32* %754, align 4
  %756 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %757 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %756, i32 0, i32 3
  %758 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %757, i32 0, i32 8
  %759 = load i32, i32* %758, align 4
  %760 = ashr i32 %755, %759
  %761 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i32 %760, i32* %761, align 8
  %762 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %763 = load i32, i32* %762, align 4
  %764 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %765 = load i32, i32* %764, align 8
  %766 = sext i32 %765 to i64
  %767 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %763, i64 %766)
  %768 = load i64, i64* %9, align 8
  %769 = inttoptr i64 %768 to i8*
  %770 = call i32 @copy_to_user(i8* %769, %struct.TYPE_7__* %12, i32 32)
  %771 = icmp ne i32 %770, 0
  br i1 %771, label %772, label %775

772:                                              ; preds = %736
  %773 = load i32, i32* @EFAULT, align 4
  %774 = sub nsw i32 0, %773
  br label %776

775:                                              ; preds = %736
  br label %776

776:                                              ; preds = %775, %772
  %777 = phi i32 [ %774, %772 ], [ 0, %775 ]
  store i32 %777, i32* %5, align 4
  br label %1435

778:                                              ; preds = %53
  %779 = load %struct.file*, %struct.file** %7, align 8
  %780 = getelementptr inbounds %struct.file, %struct.file* %779, i32 0, i32 0
  %781 = load i32, i32* %780, align 8
  %782 = load i32, i32* @FMODE_READ, align 4
  %783 = and i32 %781, %782
  %784 = icmp ne i32 %783, 0
  br i1 %784, label %788, label %785

785:                                              ; preds = %778
  %786 = load i32, i32* @EINVAL, align 4
  %787 = sub nsw i32 0, %786
  store i32 %787, i32* %5, align 4
  br label %1435

788:                                              ; preds = %778
  %789 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %790 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %789, i32 0, i32 4
  %791 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %790, i32 0, i32 6
  %792 = load i32, i32* %791, align 4
  %793 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %792, i32* %793, align 8
  %794 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %795 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %794, i32 0, i32 5
  %796 = load i64, i64* %11, align 8
  %797 = call i32 @spin_lock_irqsave(i32* %795, i64 %796)
  %798 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %799 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %798, i32 0, i32 4
  %800 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %799, i32 0, i32 1
  %801 = load i32, i32* %800, align 4
  store i32 %801, i32* %14, align 4
  %802 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %803 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %802, i32 0, i32 4
  %804 = call i32 @dma_count_done(%struct.TYPE_9__* %803)
  %805 = load i32, i32* %14, align 4
  %806 = add nsw i32 %805, %804
  store i32 %806, i32* %14, align 4
  %807 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %808 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %807, i32 0, i32 5
  %809 = load i64, i64* %11, align 8
  %810 = call i32 @spin_unlock_irqrestore(i32* %808, i64 %809)
  %811 = load i32, i32* %14, align 4
  %812 = icmp slt i32 %811, 0
  br i1 %812, label %813, label %814

813:                                              ; preds = %788
  store i32 0, i32* %14, align 4
  br label %814

814:                                              ; preds = %813, %788
  %815 = load i32, i32* %14, align 4
  %816 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %817 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %816, i32 0, i32 4
  %818 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %817, i32 0, i32 7
  %819 = load i32, i32* %818, align 4
  %820 = sdiv i32 %815, %819
  %821 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 %820, i32* %821, align 4
  %822 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %823 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %822, i32 0, i32 4
  %824 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %823, i32 0, i32 17
  %825 = load i32, i32* %824, align 4
  %826 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  store i32 %825, i32* %826, align 8
  %827 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %828 = load i32, i32* %827, align 4
  %829 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %830 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %829, i32 0, i32 4
  %831 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %830, i32 0, i32 8
  %832 = load i32, i32* %831, align 4
  %833 = ashr i32 %828, %832
  %834 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i32 %833, i32* %834, align 8
  %835 = load i64, i64* %9, align 8
  %836 = inttoptr i64 %835 to i8*
  %837 = call i32 @copy_to_user(i8* %836, %struct.TYPE_7__* %12, i32 32)
  %838 = icmp ne i32 %837, 0
  br i1 %838, label %839, label %842

839:                                              ; preds = %814
  %840 = load i32, i32* @EFAULT, align 4
  %841 = sub nsw i32 0, %840
  br label %843

842:                                              ; preds = %814
  br label %843

843:                                              ; preds = %842, %839
  %844 = phi i32 [ %841, %839 ], [ 0, %842 ]
  store i32 %844, i32* %5, align 4
  br label %1435

845:                                              ; preds = %53
  %846 = load %struct.file*, %struct.file** %7, align 8
  %847 = getelementptr inbounds %struct.file, %struct.file* %846, i32 0, i32 2
  %848 = call i32 @spin_lock(i32* %847)
  %849 = load i32, i32* @O_NONBLOCK, align 4
  %850 = load %struct.file*, %struct.file** %7, align 8
  %851 = getelementptr inbounds %struct.file, %struct.file* %850, i32 0, i32 1
  %852 = load i32, i32* %851, align 4
  %853 = or i32 %852, %849
  store i32 %853, i32* %851, align 4
  %854 = load %struct.file*, %struct.file** %7, align 8
  %855 = getelementptr inbounds %struct.file, %struct.file* %854, i32 0, i32 2
  %856 = call i32 @spin_unlock(i32* %855)
  store i32 0, i32* %5, align 4
  br label %1435

857:                                              ; preds = %53
  %858 = load %struct.file*, %struct.file** %7, align 8
  %859 = getelementptr inbounds %struct.file, %struct.file* %858, i32 0, i32 0
  %860 = load i32, i32* %859, align 8
  %861 = load i32, i32* @FMODE_WRITE, align 4
  %862 = and i32 %860, %861
  %863 = icmp ne i32 %862, 0
  br i1 %863, label %867, label %864

864:                                              ; preds = %857
  %865 = load i32, i32* @EINVAL, align 4
  %866 = sub nsw i32 0, %865
  store i32 %866, i32* %5, align 4
  br label %1435

867:                                              ; preds = %857
  %868 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %869 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %868, i32 0, i32 5
  %870 = load i64, i64* %11, align 8
  %871 = call i32 @spin_lock_irqsave(i32* %869, i64 %870)
  %872 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %873 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %872, i32 0, i32 3
  %874 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %873, i32 0, i32 1
  %875 = load i32, i32* %874, align 4
  store i32 %875, i32* %14, align 4
  %876 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %877 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %876, i32 0, i32 3
  %878 = call i32 @dma_count_done(%struct.TYPE_9__* %877)
  %879 = load i32, i32* %14, align 4
  %880 = sub nsw i32 %879, %878
  store i32 %880, i32* %14, align 4
  %881 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %882 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %881, i32 0, i32 5
  %883 = load i64, i64* %11, align 8
  %884 = call i32 @spin_unlock_irqrestore(i32* %882, i64 %883)
  %885 = load i32, i32* %14, align 4
  %886 = icmp slt i32 %885, 0
  br i1 %886, label %887, label %888

887:                                              ; preds = %867
  store i32 0, i32* %14, align 4
  br label %888

888:                                              ; preds = %887, %867
  %889 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %890 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %889, i32 0, i32 3
  %891 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %890, i32 0, i32 7
  %892 = load i32, i32* %891, align 4
  %893 = load i32, i32* %14, align 4
  %894 = sdiv i32 %893, %892
  store i32 %894, i32* %14, align 4
  %895 = load i32, i32* %14, align 4
  %896 = load i64, i64* %9, align 8
  %897 = inttoptr i64 %896 to i32*
  %898 = call i32 @put_user(i32 %895, i32* %897)
  store i32 %898, i32* %5, align 4
  br label %1435

899:                                              ; preds = %53
  %900 = load %struct.file*, %struct.file** %7, align 8
  %901 = getelementptr inbounds %struct.file, %struct.file* %900, i32 0, i32 0
  %902 = load i32, i32* %901, align 8
  %903 = load i32, i32* @FMODE_READ, align 4
  %904 = and i32 %902, %903
  %905 = icmp ne i32 %904, 0
  br i1 %905, label %909, label %906

906:                                              ; preds = %899
  %907 = load i32, i32* @EINVAL, align 4
  %908 = sub nsw i32 0, %907
  store i32 %908, i32* %5, align 4
  br label %1435

909:                                              ; preds = %899
  %910 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %911 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %910, i32 0, i32 5
  %912 = load i64, i64* %11, align 8
  %913 = call i32 @spin_lock_irqsave(i32* %911, i64 %912)
  %914 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %915 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %914, i32 0, i32 4
  %916 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %915, i32 0, i32 2
  %917 = load i32, i32* %916, align 4
  %918 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i32 %917, i32* %918, align 4
  %919 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %920 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %919, i32 0, i32 4
  %921 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %920, i32 0, i32 1
  %922 = load i32, i32* %921, align 4
  store i32 %922, i32* %14, align 4
  %923 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %924 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %923, i32 0, i32 4
  %925 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %924, i32 0, i32 15
  %926 = load i32, i32* %925, align 4
  %927 = icmp ne i32 %926, 0
  br i1 %927, label %957, label %928

928:                                              ; preds = %909
  %929 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %930 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %929, i32 0, i32 4
  %931 = call i32 @dma_count_done(%struct.TYPE_9__* %930)
  store i32 %931, i32* %18, align 4
  %932 = load i32, i32* %18, align 4
  %933 = load i32, i32* %14, align 4
  %934 = add nsw i32 %933, %932
  store i32 %934, i32* %14, align 4
  %935 = load i32, i32* %18, align 4
  %936 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %937 = load i32, i32* %936, align 4
  %938 = add nsw i32 %937, %935
  store i32 %938, i32* %936, align 4
  %939 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %940 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %939, i32 0, i32 4
  %941 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %940, i32 0, i32 16
  %942 = load i32, i32* %941, align 4
  %943 = call i8* @virt_to_phys(i32 %942)
  %944 = load i32, i32* %18, align 4
  %945 = sext i32 %944 to i64
  %946 = getelementptr i8, i8* %943, i64 %945
  %947 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %948 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %947, i32 0, i32 4
  %949 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %948, i32 0, i32 13
  %950 = load i32, i32* %949, align 4
  %951 = call i8* @virt_to_phys(i32 %950)
  %952 = ptrtoint i8* %946 to i64
  %953 = ptrtoint i8* %951 to i64
  %954 = sub i64 %952, %953
  %955 = inttoptr i64 %954 to i8*
  %956 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  store i8* %955, i8** %956, align 8
  br label %973

957:                                              ; preds = %909
  %958 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %959 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %958, i32 0, i32 4
  %960 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %959, i32 0, i32 16
  %961 = load i32, i32* %960, align 4
  %962 = call i8* @virt_to_phys(i32 %961)
  %963 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %964 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %963, i32 0, i32 4
  %965 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %964, i32 0, i32 13
  %966 = load i32, i32* %965, align 4
  %967 = call i8* @virt_to_phys(i32 %966)
  %968 = ptrtoint i8* %962 to i64
  %969 = ptrtoint i8* %967 to i64
  %970 = sub i64 %968, %969
  %971 = inttoptr i64 %970 to i8*
  %972 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  store i8* %971, i8** %972, align 8
  br label %973

973:                                              ; preds = %957, %928
  %974 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %975 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %974, i32 0, i32 4
  %976 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %975, i32 0, i32 0
  %977 = load i32, i32* %976, align 4
  %978 = icmp ne i32 %977, 0
  br i1 %978, label %979, label %990

979:                                              ; preds = %973
  %980 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %981 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %980, i32 0, i32 4
  %982 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %981, i32 0, i32 12
  %983 = load i32, i32* %982, align 4
  %984 = sub nsw i32 %983, 1
  %985 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %986 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %985, i32 0, i32 4
  %987 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %986, i32 0, i32 1
  %988 = load i32, i32* %987, align 4
  %989 = and i32 %988, %984
  store i32 %989, i32* %987, align 4
  br label %990

990:                                              ; preds = %979, %973
  %991 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %992 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %991, i32 0, i32 5
  %993 = load i64, i64* %11, align 8
  %994 = call i32 @spin_unlock_irqrestore(i32* %992, i64 %993)
  %995 = load i32, i32* %14, align 4
  %996 = icmp slt i32 %995, 0
  br i1 %996, label %997, label %998

997:                                              ; preds = %990
  store i32 0, i32* %14, align 4
  br label %998

998:                                              ; preds = %997, %990
  %999 = load i32, i32* %14, align 4
  %1000 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1001 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1000, i32 0, i32 4
  %1002 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1001, i32 0, i32 8
  %1003 = load i32, i32* %1002, align 4
  %1004 = ashr i32 %999, %1003
  %1005 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  store i32 %1004, i32* %1005, align 4
  %1006 = load i64, i64* %9, align 8
  %1007 = inttoptr i64 %1006 to i8*
  %1008 = call i32 @copy_to_user(i8* %1007, %struct.TYPE_7__* %13, i32 32)
  store i32 %1008, i32* %5, align 4
  br label %1435

1009:                                             ; preds = %53
  %1010 = load %struct.file*, %struct.file** %7, align 8
  %1011 = getelementptr inbounds %struct.file, %struct.file* %1010, i32 0, i32 0
  %1012 = load i32, i32* %1011, align 8
  %1013 = load i32, i32* @FMODE_READ, align 4
  %1014 = and i32 %1012, %1013
  %1015 = icmp ne i32 %1014, 0
  br i1 %1015, label %1019, label %1016

1016:                                             ; preds = %1009
  %1017 = load i32, i32* @EINVAL, align 4
  %1018 = sub nsw i32 0, %1017
  store i32 %1018, i32* %5, align 4
  br label %1435

1019:                                             ; preds = %1009
  %1020 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1021 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1020, i32 0, i32 5
  %1022 = load i64, i64* %11, align 8
  %1023 = call i32 @spin_lock_irqsave(i32* %1021, i64 %1022)
  %1024 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1025 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1024, i32 0, i32 3
  %1026 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1025, i32 0, i32 2
  %1027 = load i32, i32* %1026, align 4
  %1028 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i32 %1027, i32* %1028, align 4
  %1029 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1030 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1029, i32 0, i32 3
  %1031 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1030, i32 0, i32 1
  %1032 = load i32, i32* %1031, align 4
  store i32 %1032, i32* %14, align 4
  %1033 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1034 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1033, i32 0, i32 3
  %1035 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1034, i32 0, i32 15
  %1036 = load i32, i32* %1035, align 4
  %1037 = icmp ne i32 %1036, 0
  br i1 %1037, label %1067, label %1038

1038:                                             ; preds = %1019
  %1039 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1040 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1039, i32 0, i32 3
  %1041 = call i32 @dma_count_done(%struct.TYPE_9__* %1040)
  store i32 %1041, i32* %18, align 4
  %1042 = load i32, i32* %18, align 4
  %1043 = load i32, i32* %14, align 4
  %1044 = sub nsw i32 %1043, %1042
  store i32 %1044, i32* %14, align 4
  %1045 = load i32, i32* %18, align 4
  %1046 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %1047 = load i32, i32* %1046, align 4
  %1048 = add nsw i32 %1047, %1045
  store i32 %1048, i32* %1046, align 4
  %1049 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1050 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1049, i32 0, i32 3
  %1051 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1050, i32 0, i32 14
  %1052 = load i32, i32* %1051, align 4
  %1053 = call i8* @virt_to_phys(i32 %1052)
  %1054 = load i32, i32* %18, align 4
  %1055 = sext i32 %1054 to i64
  %1056 = getelementptr i8, i8* %1053, i64 %1055
  %1057 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1058 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1057, i32 0, i32 3
  %1059 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1058, i32 0, i32 13
  %1060 = load i32, i32* %1059, align 4
  %1061 = call i8* @virt_to_phys(i32 %1060)
  %1062 = ptrtoint i8* %1056 to i64
  %1063 = ptrtoint i8* %1061 to i64
  %1064 = sub i64 %1062, %1063
  %1065 = inttoptr i64 %1064 to i8*
  %1066 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  store i8* %1065, i8** %1066, align 8
  br label %1083

1067:                                             ; preds = %1019
  %1068 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1069 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1068, i32 0, i32 3
  %1070 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1069, i32 0, i32 14
  %1071 = load i32, i32* %1070, align 4
  %1072 = call i8* @virt_to_phys(i32 %1071)
  %1073 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1074 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1073, i32 0, i32 3
  %1075 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1074, i32 0, i32 13
  %1076 = load i32, i32* %1075, align 4
  %1077 = call i8* @virt_to_phys(i32 %1076)
  %1078 = ptrtoint i8* %1072 to i64
  %1079 = ptrtoint i8* %1077 to i64
  %1080 = sub i64 %1078, %1079
  %1081 = inttoptr i64 %1080 to i8*
  %1082 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  store i8* %1081, i8** %1082, align 8
  br label %1083

1083:                                             ; preds = %1067, %1038
  %1084 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1085 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1084, i32 0, i32 3
  %1086 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1085, i32 0, i32 0
  %1087 = load i32, i32* %1086, align 4
  %1088 = icmp ne i32 %1087, 0
  br i1 %1088, label %1089, label %1100

1089:                                             ; preds = %1083
  %1090 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1091 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1090, i32 0, i32 3
  %1092 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1091, i32 0, i32 12
  %1093 = load i32, i32* %1092, align 4
  %1094 = sub nsw i32 %1093, 1
  %1095 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1096 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1095, i32 0, i32 3
  %1097 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1096, i32 0, i32 1
  %1098 = load i32, i32* %1097, align 4
  %1099 = and i32 %1098, %1094
  store i32 %1099, i32* %1097, align 4
  br label %1100

1100:                                             ; preds = %1089, %1083
  %1101 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1102 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1101, i32 0, i32 5
  %1103 = load i64, i64* %11, align 8
  %1104 = call i32 @spin_unlock_irqrestore(i32* %1102, i64 %1103)
  %1105 = load i32, i32* %14, align 4
  %1106 = icmp slt i32 %1105, 0
  br i1 %1106, label %1107, label %1108

1107:                                             ; preds = %1100
  store i32 0, i32* %14, align 4
  br label %1108

1108:                                             ; preds = %1107, %1100
  %1109 = load i32, i32* %14, align 4
  %1110 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1111 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1110, i32 0, i32 3
  %1112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1111, i32 0, i32 8
  %1113 = load i32, i32* %1112, align 4
  %1114 = ashr i32 %1109, %1113
  %1115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  store i32 %1114, i32* %1115, align 4
  %1116 = load i64, i64* %9, align 8
  %1117 = inttoptr i64 %1116 to i8*
  %1118 = call i32 @copy_to_user(i8* %1117, %struct.TYPE_7__* %13, i32 32)
  store i32 %1118, i32* %5, align 4
  br label %1435

1119:                                             ; preds = %53
  %1120 = load %struct.file*, %struct.file** %7, align 8
  %1121 = getelementptr inbounds %struct.file, %struct.file* %1120, i32 0, i32 0
  %1122 = load i32, i32* %1121, align 8
  %1123 = load i32, i32* @FMODE_WRITE, align 4
  %1124 = and i32 %1122, %1123
  %1125 = icmp ne i32 %1124, 0
  br i1 %1125, label %1126, label %1134

1126:                                             ; preds = %1119
  %1127 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1128 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1127, i32 0, i32 3
  %1129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1128, i32 0, i32 6
  %1130 = load i32, i32* %1129, align 4
  %1131 = load i64, i64* %9, align 8
  %1132 = inttoptr i64 %1131 to i32*
  %1133 = call i32 @put_user(i32 %1130, i32* %1132)
  store i32 %1133, i32* %5, align 4
  br label %1435

1134:                                             ; preds = %1119
  %1135 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1136 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1135, i32 0, i32 4
  %1137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1136, i32 0, i32 6
  %1138 = load i32, i32* %1137, align 4
  %1139 = load i64, i64* %9, align 8
  %1140 = inttoptr i64 %1139 to i32*
  %1141 = call i32 @put_user(i32 %1138, i32* %1140)
  store i32 %1141, i32* %5, align 4
  br label %1435

1142:                                             ; preds = %53
  %1143 = load i32, i32* %15, align 4
  %1144 = load i64, i64* %9, align 8
  %1145 = inttoptr i64 %1144 to i32*
  %1146 = call i32 @get_user(i32 %1143, i32* %1145)
  %1147 = icmp ne i32 %1146, 0
  br i1 %1147, label %1148, label %1151

1148:                                             ; preds = %1142
  %1149 = load i32, i32* @EFAULT, align 4
  %1150 = sub nsw i32 0, %1149
  store i32 %1150, i32* %5, align 4
  br label %1435

1151:                                             ; preds = %1142
  %1152 = load %struct.file*, %struct.file** %7, align 8
  %1153 = getelementptr inbounds %struct.file, %struct.file* %1152, i32 0, i32 0
  %1154 = load i32, i32* %1153, align 8
  %1155 = load i32, i32* @FMODE_READ, align 4
  %1156 = and i32 %1154, %1155
  %1157 = icmp ne i32 %1156, 0
  br i1 %1157, label %1158, label %1208

1158:                                             ; preds = %1151
  %1159 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1160 = call i32 @stop_adc(%struct.au1550_state* %1159)
  %1161 = load i32, i32* %15, align 4
  %1162 = and i32 %1161, 65535
  %1163 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1164 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1163, i32 0, i32 4
  %1165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1164, i32 0, i32 9
  store i32 %1162, i32* %1165, align 4
  %1166 = load i32, i32* %15, align 4
  %1167 = ashr i32 %1166, 16
  %1168 = and i32 %1167, 65535
  %1169 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1170 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1169, i32 0, i32 4
  %1171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1170, i32 0, i32 10
  store i32 %1168, i32* %1171, align 4
  %1172 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1173 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1172, i32 0, i32 4
  %1174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1173, i32 0, i32 9
  %1175 = load i32, i32* %1174, align 4
  %1176 = icmp slt i32 %1175, 4
  br i1 %1176, label %1177, label %1181

1177:                                             ; preds = %1158
  %1178 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1179 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1178, i32 0, i32 4
  %1180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1179, i32 0, i32 9
  store i32 4, i32* %1180, align 4
  br label %1181

1181:                                             ; preds = %1177, %1158
  %1182 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1183 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1182, i32 0, i32 4
  %1184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1183, i32 0, i32 9
  %1185 = load i32, i32* %1184, align 4
  %1186 = icmp sgt i32 %1185, 15
  br i1 %1186, label %1187, label %1191

1187:                                             ; preds = %1181
  %1188 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1189 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1188, i32 0, i32 4
  %1190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1189, i32 0, i32 9
  store i32 15, i32* %1190, align 4
  br label %1191

1191:                                             ; preds = %1187, %1181
  %1192 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1193 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1192, i32 0, i32 4
  %1194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1193, i32 0, i32 10
  %1195 = load i32, i32* %1194, align 4
  %1196 = icmp slt i32 %1195, 4
  br i1 %1196, label %1197, label %1201

1197:                                             ; preds = %1191
  %1198 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1199 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1198, i32 0, i32 4
  %1200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1199, i32 0, i32 10
  store i32 4, i32* %1200, align 4
  br label %1201

1201:                                             ; preds = %1197, %1191
  %1202 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1203 = call i32 @prog_dmabuf_adc(%struct.au1550_state* %1202)
  store i32 %1203, i32* %17, align 4
  %1204 = icmp ne i32 %1203, 0
  br i1 %1204, label %1205, label %1207

1205:                                             ; preds = %1201
  %1206 = load i32, i32* %17, align 4
  store i32 %1206, i32* %5, align 4
  br label %1435

1207:                                             ; preds = %1201
  br label %1208

1208:                                             ; preds = %1207, %1151
  %1209 = load %struct.file*, %struct.file** %7, align 8
  %1210 = getelementptr inbounds %struct.file, %struct.file* %1209, i32 0, i32 0
  %1211 = load i32, i32* %1210, align 8
  %1212 = load i32, i32* @FMODE_WRITE, align 4
  %1213 = and i32 %1211, %1212
  %1214 = icmp ne i32 %1213, 0
  br i1 %1214, label %1215, label %1265

1215:                                             ; preds = %1208
  %1216 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1217 = call i32 @stop_dac(%struct.au1550_state* %1216)
  %1218 = load i32, i32* %15, align 4
  %1219 = and i32 %1218, 65535
  %1220 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1221 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1220, i32 0, i32 3
  %1222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1221, i32 0, i32 9
  store i32 %1219, i32* %1222, align 4
  %1223 = load i32, i32* %15, align 4
  %1224 = ashr i32 %1223, 16
  %1225 = and i32 %1224, 65535
  %1226 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1227 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1226, i32 0, i32 3
  %1228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1227, i32 0, i32 10
  store i32 %1225, i32* %1228, align 4
  %1229 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1230 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1229, i32 0, i32 3
  %1231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1230, i32 0, i32 9
  %1232 = load i32, i32* %1231, align 4
  %1233 = icmp slt i32 %1232, 4
  br i1 %1233, label %1234, label %1238

1234:                                             ; preds = %1215
  %1235 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1236 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1235, i32 0, i32 3
  %1237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1236, i32 0, i32 9
  store i32 4, i32* %1237, align 4
  br label %1238

1238:                                             ; preds = %1234, %1215
  %1239 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1240 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1239, i32 0, i32 3
  %1241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1240, i32 0, i32 9
  %1242 = load i32, i32* %1241, align 4
  %1243 = icmp sgt i32 %1242, 15
  br i1 %1243, label %1244, label %1248

1244:                                             ; preds = %1238
  %1245 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1246 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1245, i32 0, i32 3
  %1247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1246, i32 0, i32 9
  store i32 15, i32* %1247, align 4
  br label %1248

1248:                                             ; preds = %1244, %1238
  %1249 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1250 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1249, i32 0, i32 3
  %1251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1250, i32 0, i32 10
  %1252 = load i32, i32* %1251, align 4
  %1253 = icmp slt i32 %1252, 4
  br i1 %1253, label %1254, label %1258

1254:                                             ; preds = %1248
  %1255 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1256 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1255, i32 0, i32 3
  %1257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1256, i32 0, i32 10
  store i32 4, i32* %1257, align 4
  br label %1258

1258:                                             ; preds = %1254, %1248
  %1259 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1260 = call i32 @prog_dmabuf_dac(%struct.au1550_state* %1259)
  store i32 %1260, i32* %17, align 4
  %1261 = icmp ne i32 %1260, 0
  br i1 %1261, label %1262, label %1264

1262:                                             ; preds = %1258
  %1263 = load i32, i32* %17, align 4
  store i32 %1263, i32* %5, align 4
  br label %1435

1264:                                             ; preds = %1258
  br label %1265

1265:                                             ; preds = %1264, %1208
  store i32 0, i32* %5, align 4
  br label %1435

1266:                                             ; preds = %53
  %1267 = load %struct.file*, %struct.file** %7, align 8
  %1268 = getelementptr inbounds %struct.file, %struct.file* %1267, i32 0, i32 0
  %1269 = load i32, i32* %1268, align 8
  %1270 = load i32, i32* @FMODE_READ, align 4
  %1271 = and i32 %1269, %1270
  %1272 = icmp ne i32 %1271, 0
  br i1 %1272, label %1273, label %1279

1273:                                             ; preds = %1266
  %1274 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1275 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1274, i32 0, i32 4
  %1276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1275, i32 0, i32 11
  %1277 = load i32, i32* %1276, align 4
  %1278 = icmp ne i32 %1277, 0
  br i1 %1278, label %1292, label %1279

1279:                                             ; preds = %1273, %1266
  %1280 = load %struct.file*, %struct.file** %7, align 8
  %1281 = getelementptr inbounds %struct.file, %struct.file* %1280, i32 0, i32 0
  %1282 = load i32, i32* %1281, align 8
  %1283 = load i32, i32* @FMODE_WRITE, align 4
  %1284 = and i32 %1282, %1283
  %1285 = icmp ne i32 %1284, 0
  br i1 %1285, label %1286, label %1295

1286:                                             ; preds = %1279
  %1287 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1288 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1287, i32 0, i32 3
  %1289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1288, i32 0, i32 11
  %1290 = load i32, i32* %1289, align 4
  %1291 = icmp ne i32 %1290, 0
  br i1 %1291, label %1292, label %1295

1292:                                             ; preds = %1286, %1273
  %1293 = load i32, i32* @EINVAL, align 4
  %1294 = sub nsw i32 0, %1293
  store i32 %1294, i32* %5, align 4
  br label %1435

1295:                                             ; preds = %1286, %1279
  %1296 = load i32, i32* %15, align 4
  %1297 = load i64, i64* %9, align 8
  %1298 = inttoptr i64 %1297 to i32*
  %1299 = call i32 @get_user(i32 %1296, i32* %1298)
  %1300 = icmp ne i32 %1299, 0
  br i1 %1300, label %1301, label %1304

1301:                                             ; preds = %1295
  %1302 = load i32, i32* @EFAULT, align 4
  %1303 = sub nsw i32 0, %1302
  store i32 %1303, i32* %5, align 4
  br label %1435

1304:                                             ; preds = %1295
  %1305 = load i32, i32* %15, align 4
  %1306 = icmp ne i32 %1305, 1
  br i1 %1306, label %1307, label %1316

1307:                                             ; preds = %1304
  %1308 = load i32, i32* %15, align 4
  %1309 = icmp ne i32 %1308, 2
  br i1 %1309, label %1310, label %1316

1310:                                             ; preds = %1307
  %1311 = load i32, i32* %15, align 4
  %1312 = icmp ne i32 %1311, 4
  br i1 %1312, label %1313, label %1316

1313:                                             ; preds = %1310
  %1314 = load i32, i32* @EINVAL, align 4
  %1315 = sub nsw i32 0, %1314
  store i32 %1315, i32* %5, align 4
  br label %1435

1316:                                             ; preds = %1310, %1307, %1304
  %1317 = load %struct.file*, %struct.file** %7, align 8
  %1318 = getelementptr inbounds %struct.file, %struct.file* %1317, i32 0, i32 0
  %1319 = load i32, i32* %1318, align 8
  %1320 = load i32, i32* @FMODE_READ, align 4
  %1321 = and i32 %1319, %1320
  %1322 = icmp ne i32 %1321, 0
  br i1 %1322, label %1323, label %1336

1323:                                             ; preds = %1316
  %1324 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1325 = call i32 @stop_adc(%struct.au1550_state* %1324)
  %1326 = load i32, i32* %15, align 4
  %1327 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1328 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1327, i32 0, i32 4
  %1329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1328, i32 0, i32 11
  store i32 %1326, i32* %1329, align 4
  %1330 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1331 = call i32 @prog_dmabuf_adc(%struct.au1550_state* %1330)
  store i32 %1331, i32* %17, align 4
  %1332 = icmp ne i32 %1331, 0
  br i1 %1332, label %1333, label %1335

1333:                                             ; preds = %1323
  %1334 = load i32, i32* %17, align 4
  store i32 %1334, i32* %5, align 4
  br label %1435

1335:                                             ; preds = %1323
  br label %1336

1336:                                             ; preds = %1335, %1316
  %1337 = load %struct.file*, %struct.file** %7, align 8
  %1338 = getelementptr inbounds %struct.file, %struct.file* %1337, i32 0, i32 0
  %1339 = load i32, i32* %1338, align 8
  %1340 = load i32, i32* @FMODE_WRITE, align 4
  %1341 = and i32 %1339, %1340
  %1342 = icmp ne i32 %1341, 0
  br i1 %1342, label %1343, label %1356

1343:                                             ; preds = %1336
  %1344 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1345 = call i32 @stop_dac(%struct.au1550_state* %1344)
  %1346 = load i32, i32* %15, align 4
  %1347 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1348 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1347, i32 0, i32 3
  %1349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1348, i32 0, i32 11
  store i32 %1346, i32* %1349, align 4
  %1350 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1351 = call i32 @prog_dmabuf_dac(%struct.au1550_state* %1350)
  store i32 %1351, i32* %17, align 4
  %1352 = icmp ne i32 %1351, 0
  br i1 %1352, label %1353, label %1355

1353:                                             ; preds = %1343
  %1354 = load i32, i32* %17, align 4
  store i32 %1354, i32* %5, align 4
  br label %1435

1355:                                             ; preds = %1343
  br label %1356

1356:                                             ; preds = %1355, %1336
  store i32 0, i32* %5, align 4
  br label %1435

1357:                                             ; preds = %53
  %1358 = load %struct.file*, %struct.file** %7, align 8
  %1359 = getelementptr inbounds %struct.file, %struct.file* %1358, i32 0, i32 0
  %1360 = load i32, i32* %1359, align 8
  %1361 = load i32, i32* @FMODE_READ, align 4
  %1362 = and i32 %1360, %1361
  %1363 = icmp ne i32 %1362, 0
  br i1 %1363, label %1364, label %1369

1364:                                             ; preds = %1357
  %1365 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1366 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1365, i32 0, i32 4
  %1367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1366, i32 0, i32 3
  %1368 = load i32, i32* %1367, align 4
  br label %1374

1369:                                             ; preds = %1357
  %1370 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1371 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1370, i32 0, i32 3
  %1372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1371, i32 0, i32 3
  %1373 = load i32, i32* %1372, align 4
  br label %1374

1374:                                             ; preds = %1369, %1364
  %1375 = phi i32 [ %1368, %1364 ], [ %1373, %1369 ]
  %1376 = load i64, i64* %9, align 8
  %1377 = inttoptr i64 %1376 to i32*
  %1378 = call i32 @put_user(i32 %1375, i32* %1377)
  store i32 %1378, i32* %5, align 4
  br label %1435

1379:                                             ; preds = %53
  %1380 = load %struct.file*, %struct.file** %7, align 8
  %1381 = getelementptr inbounds %struct.file, %struct.file* %1380, i32 0, i32 0
  %1382 = load i32, i32* %1381, align 8
  %1383 = load i32, i32* @FMODE_READ, align 4
  %1384 = and i32 %1382, %1383
  %1385 = icmp ne i32 %1384, 0
  br i1 %1385, label %1386, label %1394

1386:                                             ; preds = %1379
  %1387 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1388 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1387, i32 0, i32 4
  %1389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1388, i32 0, i32 4
  %1390 = load i32, i32* %1389, align 4
  %1391 = load i64, i64* %9, align 8
  %1392 = inttoptr i64 %1391 to i32*
  %1393 = call i32 @put_user(i32 %1390, i32* %1392)
  store i32 %1393, i32* %5, align 4
  br label %1435

1394:                                             ; preds = %1379
  %1395 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1396 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1395, i32 0, i32 3
  %1397 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1396, i32 0, i32 4
  %1398 = load i32, i32* %1397, align 4
  %1399 = load i64, i64* %9, align 8
  %1400 = inttoptr i64 %1399 to i32*
  %1401 = call i32 @put_user(i32 %1398, i32* %1400)
  store i32 %1401, i32* %5, align 4
  br label %1435

1402:                                             ; preds = %53
  %1403 = load %struct.file*, %struct.file** %7, align 8
  %1404 = getelementptr inbounds %struct.file, %struct.file* %1403, i32 0, i32 0
  %1405 = load i32, i32* %1404, align 8
  %1406 = load i32, i32* @FMODE_READ, align 4
  %1407 = and i32 %1405, %1406
  %1408 = icmp ne i32 %1407, 0
  br i1 %1408, label %1409, label %1417

1409:                                             ; preds = %1402
  %1410 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1411 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1410, i32 0, i32 4
  %1412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1411, i32 0, i32 5
  %1413 = load i32, i32* %1412, align 4
  %1414 = load i64, i64* %9, align 8
  %1415 = inttoptr i64 %1414 to i32*
  %1416 = call i32 @put_user(i32 %1413, i32* %1415)
  store i32 %1416, i32* %5, align 4
  br label %1435

1417:                                             ; preds = %1402
  %1418 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1419 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1418, i32 0, i32 3
  %1420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1419, i32 0, i32 5
  %1421 = load i32, i32* %1420, align 4
  %1422 = load i64, i64* %9, align 8
  %1423 = inttoptr i64 %1422 to i32*
  %1424 = call i32 @put_user(i32 %1421, i32* %1423)
  store i32 %1424, i32* %5, align 4
  br label %1435

1425:                                             ; preds = %53, %53, %53
  %1426 = load i32, i32* @EINVAL, align 4
  %1427 = sub nsw i32 0, %1426
  store i32 %1427, i32* %5, align 4
  br label %1435

1428:                                             ; preds = %53
  %1429 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %1430 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %1429, i32 0, i32 2
  %1431 = load i32, i32* %1430, align 4
  %1432 = load i32, i32* %8, align 4
  %1433 = load i64, i64* %9, align 8
  %1434 = call i32 @mixdev_ioctl(i32 %1431, i32 %1432, i64 %1433)
  store i32 %1434, i32* %5, align 4
  br label %1435

1435:                                             ; preds = %1428, %1425, %1417, %1409, %1394, %1386, %1374, %1356, %1353, %1333, %1313, %1301, %1292, %1265, %1262, %1205, %1148, %1134, %1126, %1108, %1016, %998, %906, %888, %864, %845, %843, %785, %776, %707, %699, %642, %627, %588, %583, %547, %518, %485, %472, %467, %463, %392, %388, %376, %366, %353, %340, %321, %314, %311, %263, %240, %229, %208, %194, %151, %144, %79, %78, %77, %69, %57
  %1436 = load i32, i32* %5, align 4
  ret i32 %1436
}

declare dso_local i32 @put_user(i32, i32*) #1

declare dso_local i32 @drain_dac(%struct.au1550_state*, i32) #1

declare dso_local i32 @stop_dac(%struct.au1550_state*) #1

declare dso_local i32 @synchronize_irq(...) #1

declare dso_local i32 @stop_adc(%struct.au1550_state*) #1

declare dso_local i32 @get_user(i32, i32*) #1

declare dso_local i32 @set_adc_rate(%struct.au1550_state*, i32) #1

declare dso_local i32 @set_dac_rate(%struct.au1550_state*, i32) #1

declare dso_local i32 @prog_dmabuf_adc(%struct.au1550_state*) #1

declare dso_local i32 @prog_dmabuf_dac(%struct.au1550_state*) #1

declare dso_local i32 @rdcodec(i32, i32) #1

declare dso_local i32 @wrcodec(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @start_adc(%struct.au1550_state*) #1

declare dso_local i32 @start_dac(%struct.au1550_state*) #1

declare dso_local i32 @dma_count_done(%struct.TYPE_9__*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32 @copy_to_user(i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i8* @virt_to_phys(i32) #1

declare dso_local i32 @mixdev_ioctl(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
