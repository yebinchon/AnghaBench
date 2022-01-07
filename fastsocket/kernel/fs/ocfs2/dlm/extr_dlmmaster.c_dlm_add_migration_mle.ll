; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_add_migration_mle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_add_migration_mle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i8*, i32, i32, i32 }
%struct.dlm_lock_resource = type { i32 }
%struct.dlm_master_list_entry = type { i64, i32, i8*, i8*, i32, i32, i32 }

@DLM_MLE_MIGRATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"tried to migrate %.*s, but some process beat me to it\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [99 x i8] c"migration error  mle: master=%u new_master=%u // request: master=%u new_master=%u // lockres=%.*s\0A\00", align 1
@DLM_MIGRATE_RESPONSE_MASTERY_REF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [98 x i8] c"%s:%.*s: master=%u, newmaster=%u, telling master to get ref for cleared out mle during migration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry**, i8*, i32, i8*, i8*)* @dlm_add_migration_mle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_add_migration_mle(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_master_list_entry* %2, %struct.dlm_master_list_entry** %3, i8* %4, i32 %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.dlm_ctxt*, align 8
  %10 = alloca %struct.dlm_lock_resource*, align 8
  %11 = alloca %struct.dlm_master_list_entry*, align 8
  %12 = alloca %struct.dlm_master_list_entry**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dlm_master_list_entry*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %9, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %10, align 8
  store %struct.dlm_master_list_entry* %2, %struct.dlm_master_list_entry** %11, align 8
  store %struct.dlm_master_list_entry** %3, %struct.dlm_master_list_entry*** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  store i32 0, i32* %18, align 4
  %20 = load %struct.dlm_master_list_entry**, %struct.dlm_master_list_entry*** %12, align 8
  store %struct.dlm_master_list_entry* null, %struct.dlm_master_list_entry** %20, align 8
  %21 = call i32 (...) @mlog_entry_void()
  %22 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %23 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %22, i32 0, i32 3
  %24 = call i32 @assert_spin_locked(i32* %23)
  %25 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %26 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %25, i32 0, i32 2
  %27 = call i32 @assert_spin_locked(i32* %26)
  %28 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %29 = load %struct.dlm_master_list_entry**, %struct.dlm_master_list_entry*** %12, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @dlm_find_mle(%struct.dlm_ctxt* %28, %struct.dlm_master_list_entry** %29, i8* %30, i32 %31)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %103

35:                                               ; preds = %8
  %36 = load %struct.dlm_master_list_entry**, %struct.dlm_master_list_entry*** %12, align 8
  %37 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %36, align 8
  store %struct.dlm_master_list_entry* %37, %struct.dlm_master_list_entry** %19, align 8
  %38 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %19, align 8
  %39 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %38, i32 0, i32 4
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %19, align 8
  %42 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DLM_MLE_MIGRATION, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %35
  %47 = load i8*, i8** %16, align 8
  %48 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %49 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp eq i8* %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* %14, align 4
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %53, i8* %54)
  %56 = load i32, i32* @EEXIST, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %18, align 4
  br label %73

58:                                               ; preds = %46
  %59 = load i32, i32* @ML_ERROR, align 4
  %60 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %19, align 8
  %61 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %19, align 8
  %65 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 (i32, i8*, i32, ...) @mlog(i32 %59, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %66, i8* %67, i8* %68, i32 %69, i8* %70)
  %72 = call i32 (...) @BUG()
  br label %73

73:                                               ; preds = %58, %52
  br label %99

74:                                               ; preds = %35
  %75 = load i8*, i8** %16, align 8
  %76 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %19, align 8
  %77 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %19, align 8
  %79 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %78, i32 0, i32 6
  %80 = call i32 @atomic_set(i32* %79, i32 1)
  %81 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %19, align 8
  %82 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %81, i32 0, i32 5
  %83 = call i32 @wake_up(i32* %82)
  %84 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %85 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %19, align 8
  %86 = call i32 @__dlm_unlink_mle(%struct.dlm_ctxt* %84, %struct.dlm_master_list_entry* %85)
  %87 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %88 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %19, align 8
  %89 = call i32 @__dlm_mle_detach_hb_events(%struct.dlm_ctxt* %87, %struct.dlm_master_list_entry* %88)
  %90 = load i32, i32* @DLM_MIGRATE_RESPONSE_MASTERY_REF, align 4
  store i32 %90, i32* %18, align 4
  %91 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %92 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i8*, i8** %13, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94, i8* %95, i8* %96, i8* %97)
  br label %99

99:                                               ; preds = %74, %73
  %100 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %19, align 8
  %101 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %100, i32 0, i32 4
  %102 = call i32 @spin_unlock(i32* %101)
  br label %103

103:                                              ; preds = %99, %8
  %104 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %105 = load i64, i64* @DLM_MLE_MIGRATION, align 8
  %106 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %107 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @dlm_init_mle(%struct.dlm_master_list_entry* %104, i64 %105, %struct.dlm_ctxt* %106, %struct.dlm_lock_resource* %107, i8* %108, i32 %109)
  %111 = load i8*, i8** %15, align 8
  %112 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %113 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** %16, align 8
  %115 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %116 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %119 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @set_bit(i8* %117, i32 %120)
  %122 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %123 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %11, align 8
  %124 = call i32 @__dlm_insert_mle(%struct.dlm_ctxt* %122, %struct.dlm_master_list_entry* %123)
  %125 = load i32, i32* %18, align 4
  ret i32 %125
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @dlm_find_mle(%struct.dlm_ctxt*, %struct.dlm_master_list_entry**, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @__dlm_unlink_mle(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @__dlm_mle_detach_hb_events(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_init_mle(%struct.dlm_master_list_entry*, i64, %struct.dlm_ctxt*, %struct.dlm_lock_resource*, i8*, i32) #1

declare dso_local i32 @set_bit(i8*, i32) #1

declare dso_local i32 @__dlm_insert_mle(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
