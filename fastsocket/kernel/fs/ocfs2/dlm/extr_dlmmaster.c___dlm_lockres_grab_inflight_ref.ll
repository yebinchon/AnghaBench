; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c___dlm_lockres_grab_inflight_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c___dlm_lockres_grab_inflight_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_lock_resource = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s:%.*s: inflight++: now %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dlm_lockres_grab_inflight_ref(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dlm_ctxt*, align 8
  %7 = alloca %struct.dlm_lock_resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %6, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %15 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %14, i32 0, i32 3
  %16 = call i32 @assert_spin_locked(i32* %15)
  br label %17

17:                                               ; preds = %13, %5
  %18 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %19 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %22 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @test_bit(i32 %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %17
  %27 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %28 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %34 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %37 = call i32 @dlm_lockres_set_refmap_bit(i32 %35, %struct.dlm_lock_resource* %36)
  br label %38

38:                                               ; preds = %26, %17
  %39 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %40 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %44 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %47 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %51 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %55 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %49, i32 %53, i64 %56)
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dlm_lockres_set_refmap_bit(i32, %struct.dlm_lock_resource*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
