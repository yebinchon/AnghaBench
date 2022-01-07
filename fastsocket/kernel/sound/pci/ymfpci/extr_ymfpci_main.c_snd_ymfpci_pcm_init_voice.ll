; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_pcm_init_voice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_pcm_init_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci_pcm = type { i32, i32, i32, i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.snd_ymfpci_voice** }
%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.snd_ymfpci_voice = type { i64, %struct.snd_ymfpci_playback_bank* }
%struct.snd_ymfpci_playback_bank = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32 }

@PCI_DEVICE_ID_YAMAHA_754 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ymfpci_pcm*, i32, %struct.snd_pcm_runtime*, i32)* @snd_ymfpci_pcm_init_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ymfpci_pcm_init_voice(%struct.snd_ymfpci_pcm* %0, i32 %1, %struct.snd_pcm_runtime* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_ymfpci_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_ymfpci_voice*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_ymfpci_playback_bank*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.snd_ymfpci_pcm* %0, %struct.snd_ymfpci_pcm** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_pcm_runtime* %2, %struct.snd_pcm_runtime** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %21, i32 0, i32 7
  %23 = load %struct.snd_ymfpci_voice**, %struct.snd_ymfpci_voice*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %23, i64 %25
  %27 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %26, align 8
  store %struct.snd_ymfpci_voice* %27, %struct.snd_ymfpci_voice** %9, align 8
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @snd_ymfpci_calc_delta(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snd_ymfpci_calc_lpfQ(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @snd_ymfpci_calc_lpfK(i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %9, align 8
  %41 = icmp ne %struct.snd_ymfpci_voice* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @snd_BUG_ON(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %4
  br label %343

47:                                               ; preds = %4
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 1, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %62

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %19, align 4
  br label %62

62:                                               ; preds = %53, %52
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %62
  %66 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %67 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %66, i32 0, i32 5
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %72 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %71, i32 0, i32 6
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 15
  %80 = call i8* @cpu_to_le32(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %16, align 4
  %82 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %83 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %82, i32 0, i32 5
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %88 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %87, i32 0, i32 6
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 15
  %96 = call i8* @cpu_to_le32(i32 %95)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %17, align 4
  br label %103

98:                                               ; preds = %62
  %99 = call i8* @cpu_to_le32(i32 1073741824)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %16, align 4
  %101 = call i8* @cpu_to_le32(i32 1073741824)
  %102 = ptrtoint i8* %101 to i32
  store i32 %102, i32* %17, align 4
  br label %103

103:                                              ; preds = %98, %65
  %104 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %105 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %104, i32 0, i32 5
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i64, i64* %20, align 8
  %109 = call i32 @spin_lock_irqsave(i32* %107, i64 %108)
  %110 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %111 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 2
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 65536, i32 0
  store i32 %115, i32* %10, align 4
  %116 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %117 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @snd_pcm_format_width(i32 %118)
  %120 = icmp eq i32 %119, 8
  br i1 %120, label %121, label %124

121:                                              ; preds = %103
  %122 = load i32, i32* %10, align 4
  %123 = or i32 %122, -2147483648
  store i32 %123, i32* %10, align 4
  br label %177

124:                                              ; preds = %103
  %125 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %126 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %125, i32 0, i32 5
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @PCI_DEVICE_ID_YAMAHA_754, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %176

132:                                              ; preds = %124
  %133 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %134 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 44100
  br i1 %136, label %137, label %176

137:                                              ; preds = %132
  %138 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %139 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %142, label %176

142:                                              ; preds = %137
  %143 = load i32, i32* %6, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %176

145:                                              ; preds = %142
  %146 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %147 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %146, i32 0, i32 5
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %163, label %152

152:                                              ; preds = %145
  %153 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %154 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %153, i32 0, i32 5
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %9, align 8
  %160 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %158, %161
  br i1 %162, label %163, label %176

163:                                              ; preds = %152, %145
  %164 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %9, align 8
  %165 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %169 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %168, i32 0, i32 5
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  store i32 %167, i32* %171, align 8
  %172 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %173 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %172, i32 0, i32 0
  store i32 1, i32* %173, align 8
  %174 = load i32, i32* %10, align 4
  %175 = or i32 %174, 268435456
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %163, %152, %142, %137, %132, %124
  br label %177

177:                                              ; preds = %176, %121
  %178 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %179 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %178, i32 0, i32 5
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %9, align 8
  %185 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %183, %186
  br i1 %187, label %188, label %199

188:                                              ; preds = %177
  %189 = load i32, i32* %10, align 4
  %190 = and i32 %189, 268435456
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %188
  %193 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %194 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %193, i32 0, i32 5
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  store i32 -1, i32* %196, align 8
  %197 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %198 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %197, i32 0, i32 0
  store i32 0, i32* %198, align 8
  br label %199

199:                                              ; preds = %192, %188, %177
  %200 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %201 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 2
  br i1 %203, label %204, label %211

204:                                              ; preds = %199
  %205 = load i32, i32* %6, align 4
  %206 = and i32 %205, 1
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = load i32, i32* %10, align 4
  %210 = or i32 %209, 1
  store i32 %210, i32* %10, align 4
  br label %211

211:                                              ; preds = %208, %204, %199
  %212 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %213 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %212, i32 0, i32 5
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 2
  %216 = load i64, i64* %20, align 8
  %217 = call i32 @spin_unlock_irqrestore(i32* %215, i64 %216)
  store i32 0, i32* %15, align 4
  br label %218

218:                                              ; preds = %340, %211
  %219 = load i32, i32* %15, align 4
  %220 = icmp ult i32 %219, 2
  br i1 %220, label %221, label %343

221:                                              ; preds = %218
  %222 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %9, align 8
  %223 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %222, i32 0, i32 1
  %224 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %223, align 8
  %225 = load i32, i32* %15, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %224, i64 %226
  store %struct.snd_ymfpci_playback_bank* %227, %struct.snd_ymfpci_playback_bank** %14, align 8
  %228 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %229 = call i32 @memset(%struct.snd_ymfpci_playback_bank* %228, i32 0, i32 112)
  %230 = load i32, i32* %10, align 4
  %231 = call i8* @cpu_to_le32(i32 %230)
  %232 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %233 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %232, i32 0, i32 17
  store i8* %231, i8** %233, align 8
  %234 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %235 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = call i8* @cpu_to_le32(i32 %236)
  %238 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %239 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %238, i32 0, i32 16
  store i8* %237, i8** %239, align 8
  %240 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %241 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i8* @cpu_to_le32(i32 %242)
  %244 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %245 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %244, i32 0, i32 15
  store i8* %243, i8** %245, align 8
  %246 = load i32, i32* %12, align 4
  %247 = call i8* @cpu_to_le32(i32 %246)
  %248 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %249 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %248, i32 0, i32 14
  store i8* %247, i8** %249, align 8
  %250 = load i32, i32* %11, align 4
  %251 = call i8* @cpu_to_le32(i32 %250)
  %252 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %253 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %252, i32 0, i32 12
  store i8* %251, i8** %253, align 8
  %254 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %255 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %254, i32 0, i32 13
  store i8* %251, i8** %255, align 8
  %256 = load i32, i32* %13, align 4
  %257 = call i8* @cpu_to_le32(i32 %256)
  %258 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %259 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %258, i32 0, i32 10
  store i8* %257, i8** %259, align 8
  %260 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %261 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %260, i32 0, i32 11
  store i8* %257, i8** %261, align 8
  %262 = call i8* @cpu_to_le32(i32 1073741824)
  %263 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %264 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %263, i32 0, i32 8
  store i8* %262, i8** %264, align 8
  %265 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %266 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %265, i32 0, i32 9
  store i8* %262, i8** %266, align 8
  %267 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %268 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %267, i32 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %290

271:                                              ; preds = %221
  %272 = load i32, i32* %18, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %271
  %275 = load i32, i32* %16, align 4
  %276 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %277 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %276, i32 0, i32 1
  store i32 %275, i32* %277, align 4
  %278 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %279 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %278, i32 0, i32 0
  store i32 %275, i32* %279, align 8
  br label %280

280:                                              ; preds = %274, %271
  %281 = load i32, i32* %19, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %280
  %284 = load i32, i32* %17, align 4
  %285 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %286 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %285, i32 0, i32 3
  store i32 %284, i32* %286, align 4
  %287 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %288 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %287, i32 0, i32 2
  store i32 %284, i32* %288, align 8
  br label %289

289:                                              ; preds = %283, %280
  br label %290

290:                                              ; preds = %289, %221
  %291 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %292 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %291, i32 0, i32 3
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %339

295:                                              ; preds = %290
  %296 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %297 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %319, label %300

300:                                              ; preds = %295
  %301 = load i32, i32* %18, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %300
  %304 = load i32, i32* %16, align 4
  %305 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %306 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %305, i32 0, i32 5
  store i32 %304, i32* %306, align 4
  %307 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %308 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %307, i32 0, i32 4
  store i32 %304, i32* %308, align 8
  br label %309

309:                                              ; preds = %303, %300
  %310 = load i32, i32* %19, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %309
  %313 = load i32, i32* %17, align 4
  %314 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %315 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %314, i32 0, i32 7
  store i32 %313, i32* %315, align 4
  %316 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %317 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %316, i32 0, i32 6
  store i32 %313, i32* %317, align 8
  br label %318

318:                                              ; preds = %312, %309
  br label %338

319:                                              ; preds = %295
  %320 = load i32, i32* %18, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %319
  %323 = load i32, i32* %16, align 4
  %324 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %325 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %324, i32 0, i32 7
  store i32 %323, i32* %325, align 4
  %326 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %327 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %326, i32 0, i32 6
  store i32 %323, i32* %327, align 8
  br label %328

328:                                              ; preds = %322, %319
  %329 = load i32, i32* %19, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %337

331:                                              ; preds = %328
  %332 = load i32, i32* %17, align 4
  %333 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %334 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %333, i32 0, i32 5
  store i32 %332, i32* %334, align 4
  %335 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %336 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %335, i32 0, i32 4
  store i32 %332, i32* %336, align 8
  br label %337

337:                                              ; preds = %331, %328
  br label %338

338:                                              ; preds = %337, %318
  br label %339

339:                                              ; preds = %338, %290
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %15, align 4
  %342 = add i32 %341, 1
  store i32 %342, i32* %15, align 4
  br label %218

343:                                              ; preds = %46, %218
  ret void
}

declare dso_local i32 @snd_ymfpci_calc_delta(i32) #1

declare dso_local i32 @snd_ymfpci_calc_lpfQ(i32) #1

declare dso_local i32 @snd_ymfpci_calc_lpfK(i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(%struct.snd_ymfpci_playback_bank*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
