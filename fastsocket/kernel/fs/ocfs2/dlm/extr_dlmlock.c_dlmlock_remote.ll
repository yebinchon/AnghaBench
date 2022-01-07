; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmlock.c_dlmlock_remote.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmlock.c_dlmlock_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_lock_resource = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dlm_lock = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DLM_DENIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"type=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"lockres %.*s, flags = 0x%x\0A\00", align 1
@DLM_LOCK_RES_IN_PROGRESS = common dso_local global i32 0, align 4
@DLM_NORMAL = common dso_local global i32 0, align 4
@DLM_RECOVERING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"%s: recovery lock was owned by dead node %u, remaster it now.\0A\00", align 1
@DLM_NOTQUEUED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [95 x i8] c"%s: $RECOVERY lock for this node (%u) is mastered by %u; got lock, manually granting (no ast)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32)* @dlmlock_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlmlock_remote(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_lock_resource*, align 8
  %7 = alloca %struct.dlm_lock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %6, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @DLM_DENIED, align 4
  store i32 %11, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %12 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %13 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mlog_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %18 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %22 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %24, i32 %25)
  %27 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %28 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %27, i32 0, i32 2
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %31 = call i32 @__dlm_wait_on_lockres(%struct.dlm_lock_resource* %30)
  %32 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %33 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %34 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %38 = call i32 @dlm_lock_get(%struct.dlm_lock* %37)
  %39 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %40 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %39, i32 0, i32 1
  %41 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %42 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %41, i32 0, i32 6
  %43 = call i32 @list_add_tail(i32* %40, i32* %42)
  %44 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %45 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %47 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %46, i32 0, i32 2
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %50 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %51 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @dlm_send_remote_lock_request(%struct.dlm_ctxt* %49, %struct.dlm_lock_resource* %50, %struct.dlm_lock* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %55 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %54, i32 0, i32 2
  %56 = call i32 @spin_lock(i32* %55)
  %57 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %60 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %64 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @DLM_NORMAL, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %105

68:                                               ; preds = %4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @DLM_RECOVERING, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %74 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %78 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @dlm_is_recovery_lock(i32 %76, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %72
  %84 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %85 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %88 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %89)
  br label %99

91:                                               ; preds = %72, %68
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @DLM_NOTQUEUED, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  store i32 0, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @dlm_error(i32 %96)
  br label %98

98:                                               ; preds = %95, %91
  br label %99

99:                                               ; preds = %98, %83
  %100 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %101 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %102 = call i32 @dlm_revert_pending_lock(%struct.dlm_lock_resource* %100, %struct.dlm_lock* %101)
  %103 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %104 = call i32 @dlm_lock_put(%struct.dlm_lock* %103)
  br label %133

105:                                              ; preds = %4
  %106 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %107 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %111 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @dlm_is_recovery_lock(i32 %109, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %105
  %117 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %118 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %121 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %124 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.3, i64 0, i64 0), i32 %119, i32 %122, i32 %125)
  %127 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %128 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %127, i32 0, i32 1
  %129 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %130 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %129, i32 0, i32 3
  %131 = call i32 @list_move_tail(i32* %128, i32* %130)
  br label %132

132:                                              ; preds = %116, %105
  br label %133

133:                                              ; preds = %132, %99
  %134 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %135 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %134, i32 0, i32 2
  %136 = call i32 @spin_unlock(i32* %135)
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %141 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %142 = call i32 @dlm_lockres_calc_usage(%struct.dlm_ctxt* %140, %struct.dlm_lock_resource* %141)
  br label %143

143:                                              ; preds = %139, %133
  %144 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %145 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %144, i32 0, i32 1
  %146 = call i32 @wake_up(i32* %145)
  %147 = load i32, i32* %9, align 4
  ret i32 %147
}

declare dso_local i32 @mlog_entry(i8*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dlm_wait_on_lockres(%struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_lock_get(%struct.dlm_lock*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_send_remote_lock_request(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32) #1

declare dso_local i64 @dlm_is_recovery_lock(i32, i32) #1

declare dso_local i32 @dlm_error(i32) #1

declare dso_local i32 @dlm_revert_pending_lock(%struct.dlm_lock_resource*, %struct.dlm_lock*) #1

declare dso_local i32 @dlm_lock_put(%struct.dlm_lock*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @dlm_lockres_calc_usage(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
