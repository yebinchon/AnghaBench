; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c___dlm_lockres_drop_inflight_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c___dlm_lockres_drop_inflight_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_lock_resource = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s:%.*s: inflight--: now %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dlm_lockres_drop_inflight_ref(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_lock_resource*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %10 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %9, i32 0, i32 3
  %11 = call i32 @assert_spin_locked(i32* %10)
  %12 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %13 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %19 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %23 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %26 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %30 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %34 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %28, i32 %32, i64 %35)
  %37 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %38 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %4
  %42 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %43 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %46 = call i32 @dlm_lockres_clear_refmap_bit(i32 %44, %struct.dlm_lock_resource* %45)
  br label %47

47:                                               ; preds = %41, %4
  %48 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %49 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %48, i32 0, i32 1
  %50 = call i32 @wake_up(i32* %49)
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @dlm_lockres_clear_refmap_bit(i32, %struct.dlm_lock_resource*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
