; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_au1550_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_au1550_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64 }
%struct.au1550_state = type { i32, i32, %struct.dmabuf }
%struct.dmabuf = type { i64, i64, i32, i64, i64, i32, i32, i64, i32, i64, i32, i32, i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"write: count=%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@VERIFY_READ = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"qcount < 2 and no ring room!\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64, i32*)* @au1550_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_write(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.au1550_state*, align 8
  %11 = alloca %struct.dmabuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.au1550_state*
  store %struct.au1550_state* %20, %struct.au1550_state** %10, align 8
  %21 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %22 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %21, i32 0, i32 2
  store %struct.dmabuf* %22, %struct.dmabuf** %11, align 8
  %23 = load i32, i32* @wait, align 4
  %24 = load i32, i32* @current, align 4
  %25 = call i32 @DECLARE_WAITQUEUE(i32 %23, i32 %24)
  store i32 0, i32* %12, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %29 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %28, i32 0, i32 12
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %296

35:                                               ; preds = %4
  %36 = load i32, i32* @VERIFY_READ, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @access_ok(i32 %36, i8* %37, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %296

44:                                               ; preds = %35
  %45 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %46 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = mul i64 %48, %47
  store i64 %49, i64* %8, align 8
  %50 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %51 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %54 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %53, i32 0, i32 8
  %55 = call i32 @add_wait_queue(i32* %54, i32* @wait)
  br label %56

56:                                               ; preds = %261, %44
  %57 = load i64, i64* %8, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %284

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %119, %59
  %61 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %62 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %61, i32 0, i32 1
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %66 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %70 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %60
  %76 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %77 = call i32 @__set_current_state(i32 %76)
  br label %78

78:                                               ; preds = %75, %60
  %79 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %80 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %79, i32 0, i32 1
  %81 = load i64, i64* %13, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load i32, i32* %16, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %118

85:                                               ; preds = %78
  %86 = load %struct.file*, %struct.file** %6, align 8
  %87 = getelementptr inbounds %struct.file, %struct.file* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @O_NONBLOCK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @EAGAIN, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %95, %92
  br label %285

99:                                               ; preds = %85
  %100 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %101 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = call i32 (...) @schedule()
  %104 = load i32, i32* @current, align 4
  %105 = call i64 @signal_pending(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* @ERESTARTSYS, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %110, %107
  br label %289

114:                                              ; preds = %99
  %115 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %116 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %115, i32 0, i32 0
  %117 = call i32 @mutex_lock(i32* %116)
  br label %118

118:                                              ; preds = %114, %78
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %16, align 4
  %121 = icmp sle i32 %120, 0
  br i1 %121, label %60, label %122

122:                                              ; preds = %119
  %123 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp ugt i64 %125, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  br label %134

132:                                              ; preds = %122
  %133 = load i64, i64* %8, align 8
  br label %134

134:                                              ; preds = %132, %129
  %135 = phi i64 [ %131, %129 ], [ %133, %132 ]
  %136 = trunc i64 %135 to i32
  %137 = call i32 @copy_dmabuf_user(%struct.dmabuf* %123, i8* %124, i32 %136, i32 0)
  store i32 %137, i32* %14, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* @EFAULT, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %142, %139
  br label %285

146:                                              ; preds = %134
  %147 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %148 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %147, i32 0, i32 1
  %149 = load i64, i64* %13, align 8
  %150 = call i32 @spin_lock_irqsave(i32* %148, i64 %149)
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %153 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %159 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, %157
  store i64 %161, i64* %159, align 8
  %162 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %163 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %166 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %169 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %167, %170
  %172 = icmp sge i64 %164, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %146
  %174 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %175 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %178 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %179, %176
  store i64 %180, i64* %178, align 8
  br label %181

181:                                              ; preds = %173, %146
  br label %182

182:                                              ; preds = %256, %181
  %183 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %184 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %185, 2
  br i1 %186, label %187, label %195

187:                                              ; preds = %182
  %188 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %189 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %192 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = icmp sge i32 %190, %193
  br label %195

195:                                              ; preds = %187, %182
  %196 = phi i1 [ false, %182 ], [ %194, %187 ]
  br i1 %196, label %197, label %261

197:                                              ; preds = %195
  %198 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %199 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %198, i32 0, i32 11
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %202 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %201, i32 0, i32 7
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %205 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 4
  %207 = call i64 @au1xxx_dbdma_put_source(i32 %200, i64 %203, i32 %206)
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %197
  %210 = call i32 @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %197
  %212 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %213 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %217 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %216, i32 0, i32 7
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, %215
  store i64 %219, i64* %217, align 8
  %220 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %221 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %220, i32 0, i32 7
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %224 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %227 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %225, %228
  %230 = icmp sge i64 %222, %229
  br i1 %230, label %231, label %239

231:                                              ; preds = %211
  %232 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %233 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %236 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %235, i32 0, i32 7
  %237 = load i64, i64* %236, align 8
  %238 = sub nsw i64 %237, %234
  store i64 %238, i64* %236, align 8
  br label %239

239:                                              ; preds = %231, %211
  %240 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %241 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %240, i32 0, i32 9
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %244 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %243, i32 0, i32 10
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %246, %242
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %244, align 8
  %249 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %250 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 8
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %239
  %254 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %255 = call i32 @start_dac(%struct.au1550_state* %254)
  br label %256

256:                                              ; preds = %253, %239
  %257 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %258 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %258, align 8
  br label %182

261:                                              ; preds = %195
  %262 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %263 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %262, i32 0, i32 1
  %264 = load i64, i64* %13, align 8
  %265 = call i32 @spin_unlock_irqrestore(i32* %263, i64 %264)
  %266 = load i32, i32* %14, align 4
  %267 = sext i32 %266 to i64
  %268 = load i64, i64* %8, align 8
  %269 = sub i64 %268, %267
  store i64 %269, i64* %8, align 8
  %270 = load i32, i32* %14, align 4
  %271 = sext i32 %270 to i64
  %272 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %273 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = udiv i64 %271, %274
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %15, align 4
  %277 = load i32, i32* %15, align 4
  %278 = load i8*, i8** %7, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i8, i8* %278, i64 %279
  store i8* %280, i8** %7, align 8
  %281 = load i32, i32* %15, align 4
  %282 = load i32, i32* %12, align 4
  %283 = add nsw i32 %282, %281
  store i32 %283, i32* %12, align 4
  br label %56

284:                                              ; preds = %56
  br label %285

285:                                              ; preds = %284, %145, %98
  %286 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %287 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %286, i32 0, i32 0
  %288 = call i32 @mutex_unlock(i32* %287)
  br label %289

289:                                              ; preds = %285, %113
  %290 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %291 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %290, i32 0, i32 8
  %292 = call i32 @remove_wait_queue(i32* %291, i32* @wait)
  %293 = load i32, i32* @TASK_RUNNING, align 4
  %294 = call i32 @set_current_state(i32 %293)
  %295 = load i32, i32* %12, align 4
  store i32 %295, i32* %5, align 4
  br label %296

296:                                              ; preds = %289, %41, %32
  %297 = load i32, i32* %5, align 4
  ret i32 %297
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @access_ok(i32, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @copy_dmabuf_user(%struct.dmabuf*, i8*, i32, i32) #1

declare dso_local i64 @au1xxx_dbdma_put_source(i32, i64, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @start_dac(%struct.au1550_state*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
