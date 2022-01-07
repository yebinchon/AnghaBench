; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmunlock.c_dlmunlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmunlock.c_dlmunlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64, i32 }
%struct.dlm_lockstatus = type { %struct.dlm_lock* }
%struct.dlm_lock = type { %struct.TYPE_2__, %struct.dlm_lock_resource* }
%struct.TYPE_2__ = type { i64 }
%struct.dlm_lock_resource = type { i64, i32 }

@DLM_BADARGS = common dso_local global i32 0, align 4
@LKM_CANCEL = common dso_local global i32 0, align 4
@LKM_VALBLK = common dso_local global i32 0, align 4
@LKM_INVVALBLK = common dso_local global i32 0, align 4
@DLM_BADPARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"VALBLK given with CANCEL: ignoring VALBLK\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"lock=%p res=%p\0A\00", align 1
@LKM_EXMODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"done calling dlmunlock_master: returned %d, call_ast is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"done calling dlmunlock_remote: returned %d, call_ast is %d\0A\00", align 1
@DLM_RECOVERING = common dso_local global i32 0, align 4
@DLM_MIGRATING = common dso_local global i32 0, align 4
@DLM_FORWARD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [63 x i8] c"retrying unlock due to pending recovery/migration/in-progress\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"calling unlockast(%p, %d)\0A\00", align 1
@DLM_CANCELGRANT = common dso_local global i32 0, align 4
@DLM_NORMAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"kicking the thread\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"returning status=%d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlmunlock(%struct.dlm_ctxt* %0, %struct.dlm_lockstatus* %1, i32 %2, i32 (i8*, i32)** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_ctxt*, align 8
  %8 = alloca %struct.dlm_lockstatus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (i8*, i32)**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dlm_lock_resource*, align 8
  %14 = alloca %struct.dlm_lock*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %7, align 8
  store %struct.dlm_lockstatus* %1, %struct.dlm_lockstatus** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 (i8*, i32)** %3, i32 (i8*, i32)*** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.dlm_lock* null, %struct.dlm_lock** %14, align 8
  %17 = call i32 (...) @mlog_entry_void()
  %18 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %8, align 8
  %19 = icmp ne %struct.dlm_lockstatus* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @DLM_BADARGS, align 4
  %22 = call i32 @dlm_error(i32 %21)
  %23 = load i32, i32* @DLM_BADARGS, align 4
  store i32 %23, i32* %6, align 4
  br label %217

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @LKM_CANCEL, align 4
  %27 = load i32, i32* @LKM_VALBLK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @LKM_INVVALBLK, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %25, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* @DLM_BADPARAM, align 4
  %36 = call i32 @dlm_error(i32 %35)
  %37 = load i32, i32* @DLM_BADPARAM, align 4
  store i32 %37, i32* %6, align 4
  br label %217

38:                                               ; preds = %24
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @LKM_VALBLK, align 4
  %41 = load i32, i32* @LKM_CANCEL, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = load i32, i32* @LKM_VALBLK, align 4
  %45 = load i32, i32* @LKM_CANCEL, align 4
  %46 = or i32 %44, %45
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @LKM_VALBLK, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %48, %38
  %55 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %8, align 8
  %56 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %55, i32 0, i32 0
  %57 = load %struct.dlm_lock*, %struct.dlm_lock** %56, align 8
  %58 = icmp ne %struct.dlm_lock* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %8, align 8
  %61 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %60, i32 0, i32 0
  %62 = load %struct.dlm_lock*, %struct.dlm_lock** %61, align 8
  %63 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %62, i32 0, i32 1
  %64 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %63, align 8
  %65 = icmp ne %struct.dlm_lock_resource* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %59, %54
  %67 = load i32, i32* @DLM_BADPARAM, align 4
  %68 = call i32 @dlm_error(i32 %67)
  %69 = load i32, i32* @DLM_BADPARAM, align 4
  store i32 %69, i32* %6, align 4
  br label %217

70:                                               ; preds = %59
  %71 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %8, align 8
  %72 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %71, i32 0, i32 0
  %73 = load %struct.dlm_lock*, %struct.dlm_lock** %72, align 8
  store %struct.dlm_lock* %73, %struct.dlm_lock** %14, align 8
  %74 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %75 = icmp ne %struct.dlm_lock* %74, null
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUG_ON(i32 %77)
  %79 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %80 = call i32 @dlm_lock_get(%struct.dlm_lock* %79)
  %81 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %82 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %81, i32 0, i32 1
  %83 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %82, align 8
  store %struct.dlm_lock_resource* %83, %struct.dlm_lock_resource** %13, align 8
  %84 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %85 = icmp ne %struct.dlm_lock_resource* %84, null
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @BUG_ON(i32 %87)
  %89 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %90 = call i32 @dlm_lockres_get(%struct.dlm_lock_resource* %89)
  br label %91

91:                                               ; preds = %160, %70
  store i32 0, i32* %15, align 4
  %92 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %93 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %94 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.dlm_lock* %92, %struct.dlm_lock_resource* %93)
  %95 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %96 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %95, i32 0, i32 1
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %99 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %102 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @LKM_VALBLK, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %91
  %111 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %112 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @LKM_EXMODE, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load i32, i32* @LKM_VALBLK, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %117, %110, %91
  %123 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %124 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %123, i32 0, i32 1
  %125 = call i32 @spin_unlock(i32* %124)
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %122
  %129 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %130 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %131 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %132 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %8, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @dlmunlock_master(%struct.dlm_ctxt* %129, %struct.dlm_lock_resource* %130, %struct.dlm_lock* %131, %struct.dlm_lockstatus* %132, i32 %133, i32* %15)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %15, align 4
  %137 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %135, i32 %136)
  br label %148

138:                                              ; preds = %122
  %139 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %140 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %141 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %142 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @dlmunlock_remote(%struct.dlm_ctxt* %139, %struct.dlm_lock_resource* %140, %struct.dlm_lock* %141, %struct.dlm_lockstatus* %142, i32 %143, i32* %15)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %15, align 4
  %147 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %138, %128
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @DLM_RECOVERING, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %160, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @DLM_MIGRATING, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @DLM_FORWARD, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156, %152, %148
  %161 = call i32 @msleep(i32 50)
  %162 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  br label %91

163:                                              ; preds = %156
  %164 = load i32, i32* %15, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %188

166:                                              ; preds = %163
  %167 = load i8*, i8** %11, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %167, i32 %168)
  %170 = load i32, i32* %16, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %166
  %173 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %174 = call i32 @dlm_kick_thread(%struct.dlm_ctxt* %173, %struct.dlm_lock_resource* null)
  %175 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %176 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %179 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %180 = call i32 @dlm_lock_basts_flushed(%struct.dlm_ctxt* %178, %struct.dlm_lock* %179)
  %181 = call i32 @wait_event(i32 %177, i32 %180)
  br label %182

182:                                              ; preds = %172, %166
  %183 = load i32 (i8*, i32)**, i32 (i8*, i32)*** %10, align 8
  %184 = load i32 (i8*, i32)*, i32 (i8*, i32)** %183, align 8
  %185 = load i8*, i8** %11, align 8
  %186 = load i32, i32* %12, align 4
  %187 = call i32 %184(i8* %185, i32 %186)
  br label %188

188:                                              ; preds = %182, %163
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* @DLM_CANCELGRANT, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = load i32, i32* @DLM_NORMAL, align 4
  store i32 %193, i32* %12, align 4
  br label %194

194:                                              ; preds = %192, %188
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @DLM_NORMAL, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %194
  %199 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %200 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %201 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %202 = call i32 @dlm_kick_thread(%struct.dlm_ctxt* %200, %struct.dlm_lock_resource* %201)
  br label %206

203:                                              ; preds = %194
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @dlm_error(i32 %204)
  br label %206

206:                                              ; preds = %203, %198
  %207 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %208 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %209 = call i32 @dlm_lockres_calc_usage(%struct.dlm_ctxt* %207, %struct.dlm_lock_resource* %208)
  %210 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %211 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %210)
  %212 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %213 = call i32 @dlm_lock_put(%struct.dlm_lock* %212)
  %214 = load i32, i32* %12, align 4
  %215 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* %12, align 4
  store i32 %216, i32* %6, align 4
  br label %217

217:                                              ; preds = %206, %66, %34, %20
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @dlm_error(i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dlm_lock_get(%struct.dlm_lock*) #1

declare dso_local i32 @dlm_lockres_get(%struct.dlm_lock_resource*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlmunlock_master(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, %struct.dlm_lockstatus*, i32, i32*) #1

declare dso_local i32 @dlmunlock_remote(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, %struct.dlm_lockstatus*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dlm_kick_thread(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @dlm_lock_basts_flushed(%struct.dlm_ctxt*, %struct.dlm_lock*) #1

declare dso_local i32 @dlm_lockres_calc_usage(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_lock_put(%struct.dlm_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
