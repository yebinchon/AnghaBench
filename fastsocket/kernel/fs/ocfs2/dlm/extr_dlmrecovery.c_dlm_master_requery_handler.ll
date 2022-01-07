; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_master_requery_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_master_requery_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_msg = type { i64 }
%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_master_requery = type { i32, i32 }
%struct.dlm_lock_resource = type { i32, i32 }

@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i32 0, align 4
@DLM_ASSERT_MASTER_REQUERY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_master_requery_handler(%struct.o2net_msg* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.o2net_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.dlm_ctxt*, align 8
  %11 = alloca %struct.dlm_master_requery*, align 8
  %12 = alloca %struct.dlm_lock_resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.o2net_msg* %0, %struct.o2net_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.dlm_ctxt*
  store %struct.dlm_ctxt* %18, %struct.dlm_ctxt** %10, align 8
  %19 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %20 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.dlm_master_requery*
  store %struct.dlm_master_requery* %22, %struct.dlm_master_requery** %11, align 8
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %12, align 8
  %23 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* @DLM_ASSERT_MASTER_REQUERY, align 4
  store i32 %24, i32* %15, align 4
  %25 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %26 = call i32 @dlm_grab(%struct.dlm_ctxt* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %91

30:                                               ; preds = %4
  %31 = load %struct.dlm_master_requery*, %struct.dlm_master_requery** %11, align 8
  %32 = getelementptr inbounds %struct.dlm_master_requery, %struct.dlm_master_requery* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dlm_master_requery*, %struct.dlm_master_requery** %11, align 8
  %35 = getelementptr inbounds %struct.dlm_master_requery, %struct.dlm_master_requery* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dlm_lockid_hash(i32 %33, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %39 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %38, i32 0, i32 1
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %42 = load %struct.dlm_master_requery*, %struct.dlm_master_requery** %11, align 8
  %43 = getelementptr inbounds %struct.dlm_master_requery, %struct.dlm_master_requery* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dlm_master_requery*, %struct.dlm_master_requery** %11, align 8
  %46 = getelementptr inbounds %struct.dlm_master_requery, %struct.dlm_master_requery* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt* %41, i32 %44, i32 %47, i32 %48)
  store %struct.dlm_lock_resource* %49, %struct.dlm_lock_resource** %12, align 8
  %50 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %51 = icmp ne %struct.dlm_lock_resource* %50, null
  br i1 %51, label %52, label %84

52:                                               ; preds = %30
  %53 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %54 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %53, i32 0, i32 1
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %57 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %61 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %52
  %65 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %66 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @dlm_dispatch_assert_master(%struct.dlm_ctxt* %65, %struct.dlm_lock_resource* %66, i32 0, i32 0, i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  %74 = call i32 @mlog_errno(i32 %73)
  %75 = call i32 (...) @BUG()
  br label %76

76:                                               ; preds = %71, %64
  br label %80

77:                                               ; preds = %52
  %78 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %79 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %78)
  br label %80

80:                                               ; preds = %77, %76
  %81 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %82 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %81, i32 0, i32 1
  %83 = call i32 @spin_unlock(i32* %82)
  br label %84

84:                                               ; preds = %80, %30
  %85 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %86 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %85, i32 0, i32 1
  %87 = call i32 @spin_unlock(i32* %86)
  %88 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %89 = call i32 @dlm_put(%struct.dlm_ctxt* %88)
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %84, %28
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_lockid_hash(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt*, i32, i32, i32) #1

declare dso_local i32 @dlm_dispatch_assert_master(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
