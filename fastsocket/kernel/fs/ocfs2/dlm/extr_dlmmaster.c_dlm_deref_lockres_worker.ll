; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_deref_lockres_worker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_deref_lockres_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_work_item = type { %struct.TYPE_5__, %struct.dlm_ctxt* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.dlm_lock_resource* }
%struct.dlm_lock_resource = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dlm_ctxt = type { i32 }

@DLM_LOCK_RES_DROPPING_REF = common dso_local global i32 0, align 4
@DLM_LOCK_RES_SETREF_INPROG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s:%.*s node %u ref dropped in dispatch\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"%s:%.*s: node %u trying to drop ref but it is already dropped!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_work_item*, i8*)* @dlm_deref_lockres_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_deref_lockres_worker(%struct.dlm_work_item* %0, i8* %1) #0 {
  %3 = alloca %struct.dlm_work_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_lock_resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_work_item* %0, %struct.dlm_work_item** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.dlm_work_item*, %struct.dlm_work_item** %3, align 8
  %10 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %9, i32 0, i32 1
  %11 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  store %struct.dlm_ctxt* %11, %struct.dlm_ctxt** %5, align 8
  %12 = load %struct.dlm_work_item*, %struct.dlm_work_item** %3, align 8
  %13 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %15, align 8
  store %struct.dlm_lock_resource* %16, %struct.dlm_lock_resource** %6, align 8
  %17 = load %struct.dlm_work_item*, %struct.dlm_work_item** %3, align 8
  %18 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %23 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %22, i32 0, i32 2
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %26 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DLM_LOCK_RES_DROPPING_REF, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %33 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @test_bit(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %39 = load i32, i32* @DLM_LOCK_RES_SETREF_INPROG, align 4
  %40 = call i32 @__dlm_wait_on_lockres_flags(%struct.dlm_lock_resource* %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %43 = call i32 @dlm_lockres_clear_refmap_bit(i32 %41, %struct.dlm_lock_resource* %42)
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %37, %2
  %45 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %46 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %45, i32 0, i32 2
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %52 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %55 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %59 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %57, i32 %61, i32 %62)
  %64 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %65 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %66 = call i32 @dlm_lockres_calc_usage(%struct.dlm_ctxt* %64, %struct.dlm_lock_resource* %65)
  br label %84

67:                                               ; preds = %44
  %68 = load i32, i32* @ML_ERROR, align 4
  %69 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %70 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %73 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %77 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @mlog(i32 %68, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %75, i32 %79, i32 %80)
  %82 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %83 = call i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource* %82)
  br label %84

84:                                               ; preds = %67, %50
  %85 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %86 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %85)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @__dlm_wait_on_lockres_flags(%struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @dlm_lockres_clear_refmap_bit(i32, %struct.dlm_lock_resource*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dlm_lockres_calc_usage(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
