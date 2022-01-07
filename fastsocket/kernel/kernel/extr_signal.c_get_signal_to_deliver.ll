; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_get_signal_to_deliver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_get_signal_to_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, %struct.signal_struct*, %struct.sighand_struct* }
%struct.signal_struct = type { i32, i64 }
%struct.sighand_struct = type { i32, %struct.k_sigaction* }
%struct.k_sigaction = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_13__* null, align 8
@SIGNAL_CLD_MASK = common dso_local global i32 0, align 4
@SIGNAL_STOP_CONTINUED = common dso_local global i32 0, align 4
@CLD_CONTINUED = common dso_local global i32 0, align 4
@CLD_STOPPED = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@SIG_DFL = common dso_local global i64 0, align 8
@SA_ONESHOT = common dso_local global i32 0, align 4
@SIGNAL_UNKILLABLE = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@PF_SIGNALED = common dso_local global i32 0, align 4
@print_fatal_signals = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_signal_to_deliver(%struct.TYPE_12__* %0, %struct.k_sigaction* %1, %struct.pt_regs* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.k_sigaction*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sighand_struct*, align 8
  %10 = alloca %struct.signal_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.k_sigaction*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.k_sigaction* %1, %struct.k_sigaction** %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 4
  %16 = load %struct.sighand_struct*, %struct.sighand_struct** %15, align 8
  store %struct.sighand_struct* %16, %struct.sighand_struct** %9, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  %19 = load %struct.signal_struct*, %struct.signal_struct** %18, align 8
  store %struct.signal_struct* %19, %struct.signal_struct** %10, align 8
  br label %20

20:                                               ; preds = %213, %201, %100, %80, %67, %4
  %21 = call i32 (...) @try_to_freeze()
  %22 = load %struct.sighand_struct*, %struct.sighand_struct** %9, align 8
  %23 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.signal_struct*, %struct.signal_struct** %10, align 8
  %26 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SIGNAL_CLD_MASK, align 4
  %29 = and i32 %27, %28
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %20
  %33 = load %struct.signal_struct*, %struct.signal_struct** %10, align 8
  %34 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SIGNAL_STOP_CONTINUED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @CLD_CONTINUED, align 4
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @CLD_STOPPED, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* @SIGNAL_CLD_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.signal_struct*, %struct.signal_struct** %10, align 8
  %48 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @CLD_CONTINUED, align 4
  %53 = call i32 @tracehook_notify_jctl(i32 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load %struct.sighand_struct*, %struct.sighand_struct** %9, align 8
  %55 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_irq(i32* %55)
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %43
  %60 = call i32 @read_lock(i32* @tasklist_lock)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @do_notify_parent_cldstop(i32 %63, i32 %64)
  %66 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %67

67:                                               ; preds = %59, %43
  br label %20

68:                                               ; preds = %20
  br label %69

69:                                               ; preds = %245, %214, %186, %173, %143, %122, %68
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %71 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = load %struct.k_sigaction*, %struct.k_sigaction** %6, align 8
  %74 = call i32 @tracehook_get_signal(%struct.TYPE_13__* %70, %struct.pt_regs* %71, %struct.TYPE_12__* %72, %struct.k_sigaction* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %20

81:                                               ; preds = %69
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load %struct.k_sigaction*, %struct.k_sigaction** %6, align 8
  store %struct.k_sigaction* %88, %struct.k_sigaction** %13, align 8
  br label %132

89:                                               ; preds = %81
  %90 = load %struct.signal_struct*, %struct.signal_struct** %10, align 8
  %91 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = call i32 @do_signal_stop(i32 0)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %20

101:                                              ; preds = %97, %89
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = call i32 @dequeue_signal(%struct.TYPE_13__* %102, i32* %104, %struct.TYPE_12__* %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  br label %250

110:                                              ; preds = %101
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @SIGKILL, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @ptrace_signal(i32 %115, %struct.TYPE_12__* %116, %struct.pt_regs* %117, i8* %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %114
  br label %69

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %110
  %125 = load %struct.sighand_struct*, %struct.sighand_struct** %9, align 8
  %126 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %125, i32 0, i32 1
  %127 = load %struct.k_sigaction*, %struct.k_sigaction** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %127, i64 %130
  store %struct.k_sigaction* %131, %struct.k_sigaction** %13, align 8
  br label %132

132:                                              ; preds = %124, %87
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = load %struct.k_sigaction*, %struct.k_sigaction** %13, align 8
  %136 = call i32 @trace_signal_deliver(i32 %133, %struct.TYPE_12__* %134, %struct.k_sigaction* %135)
  %137 = load %struct.k_sigaction*, %struct.k_sigaction** %13, align 8
  %138 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SIG_IGN, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %132
  br label %69

144:                                              ; preds = %132
  %145 = load %struct.k_sigaction*, %struct.k_sigaction** %13, align 8
  %146 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SIG_DFL, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %169

151:                                              ; preds = %144
  %152 = load %struct.k_sigaction*, %struct.k_sigaction** %6, align 8
  %153 = load %struct.k_sigaction*, %struct.k_sigaction** %13, align 8
  %154 = bitcast %struct.k_sigaction* %152 to i8*
  %155 = bitcast %struct.k_sigaction* %153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 8 %155, i64 16, i1 false)
  %156 = load %struct.k_sigaction*, %struct.k_sigaction** %13, align 8
  %157 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @SA_ONESHOT, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %151
  %164 = load i64, i64* @SIG_DFL, align 8
  %165 = load %struct.k_sigaction*, %struct.k_sigaction** %13, align 8
  %166 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  store i64 %164, i64* %167, align 8
  br label %168

168:                                              ; preds = %163, %151
  br label %250

169:                                              ; preds = %144
  %170 = load i32, i32* %11, align 4
  %171 = call i64 @sig_kernel_ignore(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  br label %69

174:                                              ; preds = %169
  %175 = load %struct.signal_struct*, %struct.signal_struct** %10, align 8
  %176 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @SIGNAL_UNKILLABLE, align 4
  %179 = and i32 %177, %178
  %180 = call i64 @unlikely(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %174
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @sig_kernel_only(i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  br label %69

187:                                              ; preds = %182, %174
  %188 = load i32, i32* %11, align 4
  %189 = call i64 @sig_kernel_stop(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %215

191:                                              ; preds = %187
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @SIGSTOP, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %191
  %196 = load %struct.sighand_struct*, %struct.sighand_struct** %9, align 8
  %197 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %196, i32 0, i32 0
  %198 = call i32 @spin_unlock_irq(i32* %197)
  %199 = call i64 (...) @is_current_pgrp_orphaned()
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  br label %20

202:                                              ; preds = %195
  %203 = load %struct.sighand_struct*, %struct.sighand_struct** %9, align 8
  %204 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %203, i32 0, i32 0
  %205 = call i32 @spin_lock_irq(i32* %204)
  br label %206

206:                                              ; preds = %202, %191
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @do_signal_stop(i32 %209)
  %211 = call i64 @likely(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %206
  br label %20

214:                                              ; preds = %206
  br label %69

215:                                              ; preds = %187
  %216 = load %struct.sighand_struct*, %struct.sighand_struct** %9, align 8
  %217 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %216, i32 0, i32 0
  %218 = call i32 @spin_unlock_irq(i32* %217)
  %219 = load i32, i32* @PF_SIGNALED, align 4
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 8
  %224 = load i32, i32* %11, align 4
  %225 = call i64 @sig_kernel_coredump(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %245

227:                                              ; preds = %215
  %228 = load i64, i64* @print_fatal_signals, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  %231 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @print_fatal_signal(%struct.pt_regs* %231, i32 %234)
  br label %236

236:                                              ; preds = %230, %227
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %244 = call i32 @do_coredump(i32 %239, i32 %242, %struct.pt_regs* %243)
  br label %245

245:                                              ; preds = %236, %215
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @do_group_exit(i32 %248)
  br label %69

250:                                              ; preds = %168, %109
  %251 = load %struct.sighand_struct*, %struct.sighand_struct** %9, align 8
  %252 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %251, i32 0, i32 0
  %253 = call i32 @spin_unlock_irq(i32* %252)
  %254 = load i32, i32* %11, align 4
  ret i32 %254
}

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tracehook_notify_jctl(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @do_notify_parent_cldstop(i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @tracehook_get_signal(%struct.TYPE_13__*, %struct.pt_regs*, %struct.TYPE_12__*, %struct.k_sigaction*) #1

declare dso_local i32 @do_signal_stop(i32) #1

declare dso_local i32 @dequeue_signal(%struct.TYPE_13__*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @ptrace_signal(i32, %struct.TYPE_12__*, %struct.pt_regs*, i8*) #1

declare dso_local i32 @trace_signal_deliver(i32, %struct.TYPE_12__*, %struct.k_sigaction*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @sig_kernel_ignore(i32) #1

declare dso_local i32 @sig_kernel_only(i32) #1

declare dso_local i64 @sig_kernel_stop(i32) #1

declare dso_local i64 @is_current_pgrp_orphaned(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @sig_kernel_coredump(i32) #1

declare dso_local i32 @print_fatal_signal(%struct.pt_regs*, i32) #1

declare dso_local i32 @do_coredump(i32, i32, %struct.pt_regs*) #1

declare dso_local i32 @do_group_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
