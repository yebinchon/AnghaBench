; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_finish_migration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_finish_migration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32 }
%struct.dlm_lock_resource = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dlm_node_iter = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"now time to do a migrate request to other nodes\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"doing assert master of %.*s to all except the original node\0A\00", align 1
@DLM_ASSERT_MASTER_FINISH_MIGRATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"doing assert master of %.*s back to %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"assert master to original master failed with %d.\0A\00", align 1
@DLM_LOCK_RES_MIGRATING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_finish_migration(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_node_iter, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %10 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %13 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dlm_node_iter_init(i32 %14, %struct.dlm_node_iter* %7)
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds %struct.dlm_node_iter, %struct.dlm_node_iter* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clear_bit(i32 %16, i32 %18)
  %20 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %21 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.dlm_node_iter, %struct.dlm_node_iter* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clear_bit(i32 %22, i32 %24)
  %26 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %27 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %30 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %34 = call i32 @dlm_lockres_set_refmap_bit(i32 %32, %struct.dlm_lock_resource* %33)
  %35 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %36 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %40 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %43 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dlm_do_migrate_request(%struct.dlm_ctxt* %39, %struct.dlm_lock_resource* %40, i32 %41, i32 %44, %struct.dlm_node_iter* %7)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %3
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %126

51:                                               ; preds = %3
  %52 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %53 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %57 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %59)
  %61 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %62 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %63 = getelementptr inbounds %struct.dlm_node_iter, %struct.dlm_node_iter* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DLM_ASSERT_MASTER_FINISH_MIGRATION, align 4
  %66 = call i32 @dlm_do_assert_master(%struct.dlm_ctxt* %61, %struct.dlm_lock_resource* %62, i32 %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %51
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %69, %51
  %73 = getelementptr inbounds %struct.dlm_node_iter, %struct.dlm_node_iter* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @memset(i32 %74, i32 0, i32 4)
  %76 = load i32, i32* %6, align 4
  %77 = getelementptr inbounds %struct.dlm_node_iter, %struct.dlm_node_iter* %7, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @set_bit(i32 %76, i32 %78)
  %80 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %81 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %85 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %87, i32 %88)
  %90 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %91 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %92 = getelementptr inbounds %struct.dlm_node_iter, %struct.dlm_node_iter* %7, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DLM_ASSERT_MASTER_FINISH_MIGRATION, align 4
  %95 = call i32 @dlm_do_assert_master(%struct.dlm_ctxt* %90, %struct.dlm_lock_resource* %91, i32 %93, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %72
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %98, %72
  %102 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %103 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %102, i32 0, i32 1
  %104 = call i32 @spin_lock(i32* %103)
  %105 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %106 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %107 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %108 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dlm_set_lockres_owner(%struct.dlm_ctxt* %105, %struct.dlm_lock_resource* %106, i32 %109)
  %111 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %114 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %118 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %117, i32 0, i32 1
  %119 = call i32 @spin_unlock(i32* %118)
  %120 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %121 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %122 = call i32 @dlm_kick_thread(%struct.dlm_ctxt* %120, %struct.dlm_lock_resource* %121)
  %123 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %124 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %123, i32 0, i32 0
  %125 = call i32 @wake_up(i32* %124)
  br label %126

126:                                              ; preds = %101, %48
  %127 = load i32, i32* %8, align 4
  ret i32 %127
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dlm_node_iter_init(i32, %struct.dlm_node_iter*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_lockres_set_refmap_bit(i32, %struct.dlm_lock_resource*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @dlm_do_migrate_request(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32, i32, %struct.dlm_node_iter*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @dlm_do_assert_master(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @dlm_set_lockres_owner(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @dlm_kick_thread(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
