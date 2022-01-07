; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_migrate_request_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_migrate_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_msg = type { i64 }
%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_lock_resource = type { i32, i32 }
%struct.dlm_migrate_request = type { i8*, i32, i32, i32 }
%struct.dlm_master_list_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@dlm_mle_cache = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DLM_LOCK_RES_RECOVERING = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Got a migrate request, but the lockres is marked as recovering!\00", align 1
@DLM_LOCK_RES_MIGRATING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_migrate_request_handler(%struct.o2net_msg* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.o2net_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.dlm_ctxt*, align 8
  %11 = alloca %struct.dlm_lock_resource*, align 8
  %12 = alloca %struct.dlm_migrate_request*, align 8
  %13 = alloca %struct.dlm_master_list_entry*, align 8
  %14 = alloca %struct.dlm_master_list_entry*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.o2net_msg* %0, %struct.o2net_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.dlm_ctxt*
  store %struct.dlm_ctxt* %20, %struct.dlm_ctxt** %10, align 8
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %11, align 8
  %21 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %22 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.dlm_migrate_request*
  store %struct.dlm_migrate_request* %24, %struct.dlm_migrate_request** %12, align 8
  store %struct.dlm_master_list_entry* null, %struct.dlm_master_list_entry** %13, align 8
  store %struct.dlm_master_list_entry* null, %struct.dlm_master_list_entry** %14, align 8
  store i32 0, i32* %18, align 4
  %25 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %26 = call i32 @dlm_grab(%struct.dlm_ctxt* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %133

31:                                               ; preds = %4
  %32 = load %struct.dlm_migrate_request*, %struct.dlm_migrate_request** %12, align 8
  %33 = getelementptr inbounds %struct.dlm_migrate_request, %struct.dlm_migrate_request* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %15, align 8
  %35 = load %struct.dlm_migrate_request*, %struct.dlm_migrate_request** %12, align 8
  %36 = getelementptr inbounds %struct.dlm_migrate_request, %struct.dlm_migrate_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %16, align 4
  %38 = load i8*, i8** %15, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @dlm_lockid_hash(i8* %38, i32 %39)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* @dlm_mle_cache, align 4
  %42 = load i32, i32* @GFP_NOFS, align 4
  %43 = call i64 @kmem_cache_alloc(i32 %41, i32 %42)
  %44 = inttoptr i64 %43 to %struct.dlm_master_list_entry*
  store %struct.dlm_master_list_entry* %44, %struct.dlm_master_list_entry** %13, align 8
  %45 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %13, align 8
  %46 = icmp ne %struct.dlm_master_list_entry* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %31
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %18, align 4
  br label %129

50:                                               ; preds = %31
  %51 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %52 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %51, i32 0, i32 0
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %17, align 4
  %58 = call %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt* %54, i8* %55, i32 %56, i32 %57)
  store %struct.dlm_lock_resource* %58, %struct.dlm_lock_resource** %11, align 8
  %59 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %60 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %59, i32 0, i32 1
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %63 = icmp ne %struct.dlm_lock_resource* %62, null
  br i1 %63, label %64, label %94

64:                                               ; preds = %50
  %65 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %66 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %65, i32 0, i32 1
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %69 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DLM_LOCK_RES_RECOVERING, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %64
  %75 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %76 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load i32, i32* @ML_ERROR, align 4
  %79 = call i32 @mlog(i32 %78, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @dlm_mle_cache, align 4
  %81 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %13, align 8
  %82 = call i32 @kmem_cache_free(i32 %80, %struct.dlm_master_list_entry* %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %18, align 4
  br label %107

85:                                               ; preds = %64
  %86 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %87 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %88 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %92 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %91, i32 0, i32 1
  %93 = call i32 @spin_unlock(i32* %92)
  br label %94

94:                                               ; preds = %85, %50
  %95 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %96 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %97 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %13, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = load i32, i32* %16, align 4
  %100 = load %struct.dlm_migrate_request*, %struct.dlm_migrate_request** %12, align 8
  %101 = getelementptr inbounds %struct.dlm_migrate_request, %struct.dlm_migrate_request* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.dlm_migrate_request*, %struct.dlm_migrate_request** %12, align 8
  %104 = getelementptr inbounds %struct.dlm_migrate_request, %struct.dlm_migrate_request* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dlm_add_migration_mle(%struct.dlm_ctxt* %95, %struct.dlm_lock_resource* %96, %struct.dlm_master_list_entry* %97, %struct.dlm_master_list_entry** %14, i8* %98, i32 %99, i32 %102, i32 %105)
  store i32 %106, i32* %18, align 4
  br label %107

107:                                              ; preds = %94, %74
  %108 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %109 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %108, i32 0, i32 1
  %110 = call i32 @spin_unlock(i32* %109)
  %111 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %112 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %111, i32 0, i32 0
  %113 = call i32 @spin_unlock(i32* %112)
  %114 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %115 = icmp ne %struct.dlm_master_list_entry* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %107
  %117 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %118 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %119 = call i32 @dlm_mle_detach_hb_events(%struct.dlm_ctxt* %117, %struct.dlm_master_list_entry* %118)
  %120 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %121 = call i32 @dlm_put_mle(%struct.dlm_master_list_entry* %120)
  br label %122

122:                                              ; preds = %116, %107
  %123 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %124 = icmp ne %struct.dlm_lock_resource* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %127 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %126)
  br label %128

128:                                              ; preds = %125, %122
  br label %129

129:                                              ; preds = %128, %47
  %130 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %131 = call i32 @dlm_put(%struct.dlm_ctxt* %130)
  %132 = load i32, i32* %18, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %129, %28
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_lockid_hash(i8*, i32) #1

declare dso_local i64 @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt*, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @dlm_add_migration_mle(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry**, i8*, i32, i32, i32) #1

declare dso_local i32 @dlm_mle_detach_hb_events(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @dlm_put_mle(%struct.dlm_master_list_entry*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
