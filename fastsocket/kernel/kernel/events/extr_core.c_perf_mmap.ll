; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.perf_event* }
%struct.perf_event = type { i32, i64, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, i64, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.user_struct = type { i32 }
%struct.ring_buffer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@sysctl_perf_event_mlock = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@RING_BUFFER_WRITABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@perf_mmap_vmops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @perf_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.user_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ring_buffer*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load %struct.perf_event*, %struct.perf_event** %20, align 8
  store %struct.perf_event* %21, %struct.perf_event** %6, align 8
  %22 = call %struct.user_struct* (...) @current_user()
  store %struct.user_struct* %22, %struct.user_struct** %9, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %23 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %253

36:                                               ; preds = %27, %2
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @VM_SHARED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %253

46:                                               ; preds = %36
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %49, %52
  store i64 %53, i64* %13, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = udiv i64 %54, %55
  %57 = sub i64 %56, 1
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %14, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %46
  %61 = load i64, i64* %14, align 8
  %62 = call i32 @is_power_of_2(i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %253

67:                                               ; preds = %60, %46
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = load i64, i64* %14, align 8
  %71 = add i64 1, %70
  %72 = mul i64 %69, %71
  %73 = icmp ne i64 %68, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %253

77:                                               ; preds = %67
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %253

85:                                               ; preds = %77
  %86 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %87 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %86, i32 0, i32 7
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @WARN_ON_ONCE(i32 %90)
  %92 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %93 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %92, i32 0, i32 2
  %94 = call i32 @mutex_lock(i32* %93)
  %95 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %96 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %95, i32 0, i32 5
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = icmp ne %struct.TYPE_9__* %97, null
  br i1 %98, label %99, label %117

99:                                               ; preds = %85
  %100 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %101 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %100, i32 0, i32 5
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %14, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %109 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %108, i32 0, i32 5
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = call i32 @atomic_inc(i32* %111)
  br label %116

113:                                              ; preds = %99
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %17, align 4
  br label %116

116:                                              ; preds = %113, %107
  br label %234

117:                                              ; preds = %85
  %118 = load i64, i64* %14, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %15, align 8
  %120 = load i32, i32* @sysctl_perf_event_mlock, align 4
  %121 = load i32, i32* @PAGE_SHIFT, align 4
  %122 = sub nsw i32 %121, 10
  %123 = ashr i32 %120, %122
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %8, align 8
  %125 = call i64 (...) @num_online_cpus()
  %126 = load i64, i64* %8, align 8
  %127 = mul i64 %126, %125
  store i64 %127, i64* %8, align 8
  %128 = load %struct.user_struct*, %struct.user_struct** %9, align 8
  %129 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %128, i32 0, i32 0
  %130 = call i64 @atomic_long_read(i32* %129)
  %131 = load i64, i64* %15, align 8
  %132 = add nsw i64 %130, %131
  store i64 %132, i64* %7, align 8
  store i64 0, i64* %16, align 8
  %133 = load i64, i64* %7, align 8
  %134 = load i64, i64* %8, align 8
  %135 = icmp ugt i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %117
  %137 = load i64, i64* %7, align 8
  %138 = load i64, i64* %8, align 8
  %139 = sub i64 %137, %138
  store i64 %139, i64* %16, align 8
  br label %140

140:                                              ; preds = %136, %117
  %141 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %142 = call i64 @rlimit(i32 %141)
  store i64 %142, i64* %11, align 8
  %143 = load i32, i32* @PAGE_SHIFT, align 4
  %144 = load i64, i64* %11, align 8
  %145 = zext i32 %143 to i64
  %146 = lshr i64 %144, %145
  store i64 %146, i64* %11, align 8
  %147 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %148 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %147, i32 0, i32 5
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %16, align 8
  %153 = add nsw i64 %151, %152
  store i64 %153, i64* %10, align 8
  %154 = load i64, i64* %10, align 8
  %155 = load i64, i64* %11, align 8
  %156 = icmp ugt i64 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %140
  %158 = call i64 (...) @perf_paranoid_tracepoint_raw()
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load i32, i32* @CAP_IPC_LOCK, align 4
  %162 = call i32 @capable(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %160
  %165 = load i32, i32* @EPERM, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %17, align 4
  br label %234

167:                                              ; preds = %160, %157, %140
  %168 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %169 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %168, i32 0, i32 5
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = call i32 @WARN_ON(%struct.TYPE_9__* %170)
  %172 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %173 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @VM_WRITE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %167
  %179 = load i32, i32* @RING_BUFFER_WRITABLE, align 4
  %180 = load i32, i32* %18, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %18, align 4
  br label %182

182:                                              ; preds = %178, %167
  %183 = load i64, i64* %14, align 8
  %184 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %185 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %182
  %190 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %191 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %190, i32 0, i32 6
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  br label %195

194:                                              ; preds = %182
  br label %195

195:                                              ; preds = %194, %189
  %196 = phi i32 [ %193, %189 ], [ 0, %194 ]
  %197 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %198 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %18, align 4
  %201 = call %struct.ring_buffer* @rb_alloc(i64 %183, i32 %196, i32 %199, i32 %200)
  store %struct.ring_buffer* %201, %struct.ring_buffer** %12, align 8
  %202 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %203 = icmp ne %struct.ring_buffer* %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %195
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %17, align 4
  br label %234

207:                                              ; preds = %195
  %208 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %209 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %208, i32 0, i32 5
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %212 = call i32 @rcu_assign_pointer(%struct.TYPE_9__* %210, %struct.ring_buffer* %211)
  %213 = load i64, i64* %15, align 8
  %214 = load %struct.user_struct*, %struct.user_struct** %9, align 8
  %215 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %214, i32 0, i32 0
  %216 = call i32 @atomic_long_add(i64 %213, i32* %215)
  %217 = load i64, i64* %16, align 8
  %218 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %219 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %218, i32 0, i32 1
  store i64 %217, i64* %219, align 8
  %220 = call i32 (...) @get_current_user()
  %221 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %222 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 8
  %223 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %224 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %227 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %226, i32 0, i32 5
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, %225
  store i64 %231, i64* %229, align 8
  %232 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %233 = call i32 @perf_event_update_userpage(%struct.perf_event* %232)
  br label %234

234:                                              ; preds = %207, %204, %164, %116
  %235 = load i32, i32* %17, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %234
  %238 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %239 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %238, i32 0, i32 3
  %240 = call i32 @atomic_inc(i32* %239)
  br label %241

241:                                              ; preds = %237, %234
  %242 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %243 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %242, i32 0, i32 2
  %244 = call i32 @mutex_unlock(i32* %243)
  %245 = load i32, i32* @VM_RESERVED, align 4
  %246 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %247 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  %250 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %251 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %250, i32 0, i32 4
  store i32* @perf_mmap_vmops, i32** %251, align 8
  %252 = load i32, i32* %17, align 4
  store i32 %252, i32* %3, align 4
  br label %253

253:                                              ; preds = %241, %82, %74, %64, %43, %33
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local %struct.user_struct* @current_user(...) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i64 @rlimit(i32) #1

declare dso_local i64 @perf_paranoid_tracepoint_raw(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @WARN_ON(%struct.TYPE_9__*) #1

declare dso_local %struct.ring_buffer* @rb_alloc(i64, i32, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.TYPE_9__*, %struct.ring_buffer*) #1

declare dso_local i32 @atomic_long_add(i64, i32*) #1

declare dso_local i32 @get_current_user(...) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
