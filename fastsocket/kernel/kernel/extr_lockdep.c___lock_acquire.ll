; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c___lock_acquire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c___lock_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i64, %struct.held_lock* }
%struct.held_lock = type { i32, i32, i64, i32, i32, i32, i32, i64, i32, i64, %struct.lockdep_map*, %struct.lockdep_map* }
%struct.lockdep_map = type { %struct.lock_class* }
%struct.lock_class = type { i32, i32, i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@prove_locking = common dso_local global i32 0, align 4
@debug_locks = common dso_local global i32 0, align 4
@MAX_LOCKDEP_SUBCLASSES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"BUG: MAX_LOCKDEP_SUBCLASSES too low!\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"turning off the locking correctness validator.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\0Aacquire class [%p] %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MAX_LOCK_DEPTH = common dso_local global i32 0, align 4
@lock_classes = common dso_local global %struct.lock_class* null, align 8
@LOCK_USED = common dso_local global i32 0, align 4
@MAX_LOCKDEP_KEYS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"BUG: MAX_LOCK_DEPTH too low!\0A\00", align 1
@max_lockdep_depth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lockdep_map*, i32, i32, i32, i32, i32, %struct.lockdep_map*, i64, i32)* @__lock_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lock_acquire(%struct.lockdep_map* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.lockdep_map* %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.lockdep_map*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.lockdep_map*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.task_struct*, align 8
  %21 = alloca %struct.lock_class*, align 8
  %22 = alloca %struct.held_lock*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store %struct.lockdep_map* %0, %struct.lockdep_map** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store %struct.lockdep_map* %6, %struct.lockdep_map** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %28 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %28, %struct.task_struct** %20, align 8
  store %struct.lock_class* null, %struct.lock_class** %21, align 8
  store i32 0, i32* %25, align 4
  %29 = load i32, i32* @prove_locking, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %9
  store i32 1, i32* %15, align 4
  br label %32

32:                                               ; preds = %31, %9
  %33 = load i32, i32* @debug_locks, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %310

40:                                               ; preds = %32
  %41 = call i32 (...) @irqs_disabled()
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %310

48:                                               ; preds = %40
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @MAX_LOCKDEP_SUBCLASSES, align 4
  %51 = icmp uge i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = call i32 (...) @debug_locks_off()
  %57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i32 (...) @dump_stack()
  store i32 0, i32* %10, align 4
  br label %310

60:                                               ; preds = %48
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load %struct.lockdep_map*, %struct.lockdep_map** %11, align 8
  %65 = getelementptr inbounds %struct.lockdep_map, %struct.lockdep_map* %64, i32 0, i32 0
  %66 = load %struct.lock_class*, %struct.lock_class** %65, align 8
  store %struct.lock_class* %66, %struct.lock_class** %21, align 8
  br label %67

67:                                               ; preds = %63, %60
  %68 = load %struct.lock_class*, %struct.lock_class** %21, align 8
  %69 = icmp ne %struct.lock_class* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.lockdep_map*, %struct.lockdep_map** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call %struct.lock_class* @register_lock_class(%struct.lockdep_map* %75, i32 %76, i32 0)
  store %struct.lock_class* %77, %struct.lock_class** %21, align 8
  %78 = load %struct.lock_class*, %struct.lock_class** %21, align 8
  %79 = icmp ne %struct.lock_class* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  store i32 0, i32* %10, align 4
  br label %310

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %67
  %83 = load %struct.lock_class*, %struct.lock_class** %21, align 8
  %84 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %83, i32 0, i32 3
  %85 = call i32 @debug_atomic_inc(i32* %84)
  %86 = load %struct.lock_class*, %struct.lock_class** %21, align 8
  %87 = call i64 @very_verbose(%struct.lock_class* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %82
  %90 = load %struct.lock_class*, %struct.lock_class** %21, align 8
  %91 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.lock_class*, %struct.lock_class** %21, align 8
  %94 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %95)
  %97 = load %struct.lock_class*, %struct.lock_class** %21, align 8
  %98 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %106

101:                                              ; preds = %89
  %102 = load %struct.lock_class*, %struct.lock_class** %21, align 8
  %103 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %101, %89
  %107 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %108 = call i32 (...) @dump_stack()
  br label %109

109:                                              ; preds = %106, %82
  %110 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %111 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %23, align 4
  %113 = load i32, i32* %23, align 4
  %114 = load i32, i32* @MAX_LOCK_DEPTH, align 4
  %115 = icmp uge i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  store i32 0, i32* %10, align 4
  br label %310

120:                                              ; preds = %109
  %121 = load %struct.lock_class*, %struct.lock_class** %21, align 8
  %122 = load %struct.lock_class*, %struct.lock_class** @lock_classes, align 8
  %123 = ptrtoint %struct.lock_class* %121 to i64
  %124 = ptrtoint %struct.lock_class* %122 to i64
  %125 = sub i64 %123, %124
  %126 = sdiv exact i64 %125, 16
  %127 = add nsw i64 %126, 1
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %26, align 4
  %129 = load i32, i32* %23, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %162

131:                                              ; preds = %120
  %132 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %133 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %132, i32 0, i32 2
  %134 = load %struct.held_lock*, %struct.held_lock** %133, align 8
  %135 = load i32, i32* %23, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %134, i64 %136
  %138 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %137, i64 -1
  store %struct.held_lock* %138, %struct.held_lock** %22, align 8
  %139 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %140 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %26, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %131
  %145 = load %struct.lockdep_map*, %struct.lockdep_map** %17, align 8
  %146 = icmp ne %struct.lockdep_map* %145, null
  br i1 %146, label %147, label %161

147:                                              ; preds = %144
  %148 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %149 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %154 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  br label %160

157:                                              ; preds = %147
  %158 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %159 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %158, i32 0, i32 1
  store i32 2, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %152
  store i32 1, i32* %10, align 4
  br label %310

161:                                              ; preds = %144, %131
  br label %162

162:                                              ; preds = %161, %120
  %163 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %164 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %163, i32 0, i32 2
  %165 = load %struct.held_lock*, %struct.held_lock** %164, align 8
  %166 = load i32, i32* %23, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %165, i64 %167
  store %struct.held_lock* %168, %struct.held_lock** %22, align 8
  %169 = load %struct.lock_class*, %struct.lock_class** %21, align 8
  %170 = icmp ne %struct.lock_class* %169, null
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %162
  store i32 0, i32* %10, align 4
  br label %310

176:                                              ; preds = %162
  %177 = load i32, i32* %26, align 4
  %178 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %179 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load i64, i64* %18, align 8
  %181 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %182 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %181, i32 0, i32 2
  store i64 %180, i64* %182, align 8
  %183 = load %struct.lockdep_map*, %struct.lockdep_map** %11, align 8
  %184 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %185 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %184, i32 0, i32 11
  store %struct.lockdep_map* %183, %struct.lockdep_map** %185, align 8
  %186 = load %struct.lockdep_map*, %struct.lockdep_map** %17, align 8
  %187 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %188 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %187, i32 0, i32 10
  store %struct.lockdep_map* %186, %struct.lockdep_map** %188, align 8
  %189 = load i32, i32* %13, align 4
  %190 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %191 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* %14, align 4
  %193 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %194 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %193, i32 0, i32 4
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* %15, align 4
  %196 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %197 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %196, i32 0, i32 5
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* %16, align 4
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %204 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %203, i32 0, i32 6
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* %19, align 4
  %206 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %207 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* %15, align 4
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %210, label %216

210:                                              ; preds = %176
  %211 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %212 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %213 = call i32 @mark_irqflags(%struct.task_struct* %211, %struct.held_lock* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %210
  store i32 0, i32* %10, align 4
  br label %310

216:                                              ; preds = %210, %176
  %217 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %218 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %219 = load i32, i32* @LOCK_USED, align 4
  %220 = call i32 @mark_lock(%struct.task_struct* %217, %struct.held_lock* %218, i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %216
  store i32 0, i32* %10, align 4
  br label %310

223:                                              ; preds = %216
  %224 = load %struct.lock_class*, %struct.lock_class** %21, align 8
  %225 = load %struct.lock_class*, %struct.lock_class** @lock_classes, align 8
  %226 = ptrtoint %struct.lock_class* %224 to i64
  %227 = ptrtoint %struct.lock_class* %225 to i64
  %228 = sub i64 %226, %227
  %229 = sdiv exact i64 %228, 16
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %24, align 4
  %231 = load i32, i32* %24, align 4
  %232 = load i32, i32* @MAX_LOCKDEP_KEYS, align 4
  %233 = icmp uge i32 %231, %232
  %234 = zext i1 %233 to i32
  %235 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %223
  store i32 0, i32* %10, align 4
  br label %310

238:                                              ; preds = %223
  %239 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %240 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %27, align 8
  %242 = load i32, i32* %23, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %252, label %244

244:                                              ; preds = %238
  %245 = load i64, i64* %27, align 8
  %246 = icmp ne i64 %245, 0
  %247 = zext i1 %246 to i32
  %248 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %244
  store i32 0, i32* %10, align 4
  br label %310

251:                                              ; preds = %244
  store i32 1, i32* %25, align 4
  br label %252

252:                                              ; preds = %251, %238
  %253 = load i64, i64* %27, align 8
  %254 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %255 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %254, i32 0, i32 7
  store i64 %253, i64* %255, align 8
  %256 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %257 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %258 = call i64 @separate_irq_context(%struct.task_struct* %256, %struct.held_lock* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %252
  store i64 0, i64* %27, align 8
  store i32 1, i32* %25, align 4
  br label %261

261:                                              ; preds = %260, %252
  %262 = load i64, i64* %27, align 8
  %263 = load i32, i32* %24, align 4
  %264 = call i64 @iterate_chain_key(i64 %262, i32 %263)
  store i64 %264, i64* %27, align 8
  %265 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %266 = load %struct.lockdep_map*, %struct.lockdep_map** %11, align 8
  %267 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %268 = load i32, i32* %25, align 4
  %269 = load i64, i64* %27, align 8
  %270 = call i32 @validate_chain(%struct.task_struct* %265, %struct.lockdep_map* %266, %struct.held_lock* %267, i32 %268, i64 %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %261
  store i32 0, i32* %10, align 4
  br label %310

273:                                              ; preds = %261
  %274 = load i64, i64* %27, align 8
  %275 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %276 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %275, i32 0, i32 1
  store i64 %274, i64* %276, align 8
  %277 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %278 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = add i32 %279, 1
  store i32 %280, i32* %278, align 8
  %281 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %282 = call i32 @check_chain_key(%struct.task_struct* %281)
  %283 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %284 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @MAX_LOCK_DEPTH, align 4
  %287 = icmp uge i32 %285, %286
  %288 = zext i1 %287 to i32
  %289 = call i64 @unlikely(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %273
  %292 = call i32 (...) @debug_locks_off()
  %293 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %294 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %295 = call i32 (...) @dump_stack()
  store i32 0, i32* %10, align 4
  br label %310

296:                                              ; preds = %273
  %297 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %298 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @max_lockdep_depth, align 4
  %301 = icmp ugt i32 %299, %300
  %302 = zext i1 %301 to i32
  %303 = call i64 @unlikely(i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %296
  %306 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %307 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  store i32 %308, i32* @max_lockdep_depth, align 4
  br label %309

309:                                              ; preds = %305, %296
  store i32 1, i32* %10, align 4
  br label %310

310:                                              ; preds = %309, %291, %272, %250, %237, %222, %215, %175, %160, %119, %80, %55, %47, %39
  %311 = load i32, i32* %10, align 4
  ret i32 %311
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @DEBUG_LOCKS_WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @debug_locks_off(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local %struct.lock_class* @register_lock_class(%struct.lockdep_map*, i32, i32) #1

declare dso_local i32 @debug_atomic_inc(i32*) #1

declare dso_local i64 @very_verbose(%struct.lock_class*) #1

declare dso_local i32 @mark_irqflags(%struct.task_struct*, %struct.held_lock*) #1

declare dso_local i32 @mark_lock(%struct.task_struct*, %struct.held_lock*, i32) #1

declare dso_local i64 @separate_irq_context(%struct.task_struct*, %struct.held_lock*) #1

declare dso_local i64 @iterate_chain_key(i64, i32) #1

declare dso_local i32 @validate_chain(%struct.task_struct*, %struct.lockdep_map*, %struct.held_lock*, i32, i64) #1

declare dso_local i32 @check_chain_key(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
