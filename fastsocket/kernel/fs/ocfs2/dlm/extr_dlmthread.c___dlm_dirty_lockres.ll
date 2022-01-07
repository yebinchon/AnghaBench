; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmthread.c___dlm_dirty_lockres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmthread.c___dlm_dirty_lockres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64, i32, i32 }
%struct.dlm_lock_resource = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"dlm=%p, res=%p\0A\00", align 1
@DLM_LOCK_RES_MIGRATING = common dso_local global i32 0, align 4
@DLM_LOCK_RES_BLOCK_DIRTY = common dso_local global i32 0, align 4
@DLM_LOCK_RES_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dlm_dirty_lockres(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %4, align 8
  %5 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %6 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %7 = call i32 @mlog_entry(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.dlm_ctxt* %5, %struct.dlm_lock_resource* %6)
  %8 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %9 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %8, i32 0, i32 2
  %10 = call i32 @assert_spin_locked(i32* %9)
  %11 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %11, i32 0, i32 3
  %13 = call i32 @assert_spin_locked(i32* %12)
  %14 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %15 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %18 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %2
  %22 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %23 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %26 = load i32, i32* @DLM_LOCK_RES_BLOCK_DIRTY, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %50

31:                                               ; preds = %21
  %32 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %33 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %32, i32 0, i32 2
  %34 = call i64 @list_empty(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %38 = call i32 @dlm_lockres_get(%struct.dlm_lock_resource* %37)
  %39 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %40 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %39, i32 0, i32 2
  %41 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %42 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %41, i32 0, i32 1
  %43 = call i32 @list_add_tail(i32* %40, i32* %42)
  %44 = load i32, i32* @DLM_LOCK_RES_DIRTY, align 4
  %45 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %46 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %36, %31
  br label %50

50:                                               ; preds = %30, %49, %2
  ret void
}

declare dso_local i32 @mlog_entry(i8*, %struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @dlm_lockres_get(%struct.dlm_lock_resource*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
