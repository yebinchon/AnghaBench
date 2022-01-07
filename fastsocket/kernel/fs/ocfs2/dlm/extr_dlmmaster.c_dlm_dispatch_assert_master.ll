; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_dispatch_assert_master.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_dispatch_assert_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32, i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dlm_work_item = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.dlm_lock_resource* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dlm_assert_master_worker = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"IGNORE HIGHER: %.*s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_dispatch_assert_master(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_ctxt*, align 8
  %8 = alloca %struct.dlm_lock_resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dlm_work_item*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %7, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.dlm_work_item* @kzalloc(i32 32, i32 %13)
  store %struct.dlm_work_item* %14, %struct.dlm_work_item** %12, align 8
  %15 = load %struct.dlm_work_item*, %struct.dlm_work_item** %12, align 8
  %16 = icmp ne %struct.dlm_work_item* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %77

20:                                               ; preds = %5
  %21 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %22 = call i32 @dlm_grab(%struct.dlm_ctxt* %21)
  %23 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %24 = load %struct.dlm_work_item*, %struct.dlm_work_item** %12, align 8
  %25 = load i32, i32* @dlm_assert_master_worker, align 4
  %26 = call i32 @dlm_init_work_item(%struct.dlm_ctxt* %23, %struct.dlm_work_item* %24, i32 %25, i32* null)
  %27 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %28 = load %struct.dlm_work_item*, %struct.dlm_work_item** %12, align 8
  %29 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store %struct.dlm_lock_resource* %27, %struct.dlm_lock_resource** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.dlm_work_item*, %struct.dlm_work_item** %12, align 8
  %34 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.dlm_work_item*, %struct.dlm_work_item** %12, align 8
  %39 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.dlm_work_item*, %struct.dlm_work_item** %12, align 8
  %44 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %20
  %50 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %51 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %55 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %49, %20
  %60 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %61 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %60, i32 0, i32 2
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.dlm_work_item*, %struct.dlm_work_item** %12, align 8
  %64 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %63, i32 0, i32 0
  %65 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %66 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %65, i32 0, i32 3
  %67 = call i32 @list_add_tail(i32* %64, i32* %66)
  %68 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %69 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %68, i32 0, i32 2
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %72 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %75 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %74, i32 0, i32 0
  %76 = call i32 @queue_work(i32 %73, i32* %75)
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %59, %17
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.dlm_work_item* @kzalloc(i32, i32) #1

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_init_work_item(%struct.dlm_ctxt*, %struct.dlm_work_item*, i32, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
