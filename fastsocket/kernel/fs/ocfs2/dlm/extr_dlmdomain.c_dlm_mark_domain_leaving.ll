; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_mark_domain_leaving.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_mark_domain_leaving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64, i32, i32, i32 }

@dlm_domain_lock = common dso_local global i32 0, align 4
@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Node %d is joining, we wait on it.\0A\00", align 1
@DLM_CTXT_LEAVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*)* @dlm_mark_domain_leaving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_mark_domain_leaving(%struct.dlm_ctxt* %0) #0 {
  %2 = alloca %struct.dlm_ctxt*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %2, align 8
  br label %3

3:                                                ; preds = %13, %1
  %4 = call i32 @spin_lock(i32* @dlm_domain_lock)
  %5 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %6 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %9 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DLM_LOCK_RES_OWNER_UNKNOWN, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %15 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %19 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %18, i32 0, i32 1
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  %22 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %23 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %26 = call i32 @dlm_no_joining_node(%struct.dlm_ctxt* %25)
  %27 = call i32 @wait_event(i32 %24, i32 %26)
  br label %3

28:                                               ; preds = %3
  %29 = load i32, i32* @DLM_CTXT_LEAVING, align 4
  %30 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %31 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %33 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @dlm_no_joining_node(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
