; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32*, %struct.ocfs2_cluster_connection*, %struct.TYPE_2__, i32, i32, i32, i64, i32, i32 }
%struct.ocfs2_cluster_connection = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ocfs2_downconvert_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ocfs2dc\00", align 1
@ocfs2_do_node_down = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"could not find this host's node number\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_dlm_init(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_cluster_connection*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.ocfs2_cluster_connection* null, %struct.ocfs2_cluster_connection** %4, align 8
  %5 = call i32 (...) @mlog_entry_void()
  %6 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %7 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %11 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %10, i32 0, i32 6
  store i64 0, i64* %11, align 8
  br label %73

12:                                               ; preds = %1
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %14 = call i32 @ocfs2_dlm_init_debug(%struct.ocfs2_super* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @mlog_errno(i32 %18)
  br label %94

20:                                               ; preds = %12
  %21 = load i32, i32* @ocfs2_downconvert_thread, align 4
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %23 = call i32* @kthread_run(i32 %21, %struct.ocfs2_super* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %25 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %27 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @IS_ERR(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %33 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @PTR_ERR(i32* %34)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %37 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @mlog_errno(i32 %38)
  br label %94

40:                                               ; preds = %20
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %42 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %45 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %48 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strlen(i32 %49)
  %51 = load i32, i32* @ocfs2_do_node_down, align 4
  %52 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %53 = call i32 @ocfs2_cluster_connect(i32 %43, i32 %46, i32 %50, i32 %51, %struct.ocfs2_super* %52, %struct.ocfs2_cluster_connection** %4)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %40
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %94

59:                                               ; preds = %40
  %60 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %61 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %60, i32 0, i32 6
  %62 = call i32 @ocfs2_cluster_this_node(i64* %61)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @mlog_errno(i32 %66)
  %68 = load i32, i32* @ML_ERROR, align 4
  %69 = call i32 @mlog(i32 %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %4, align 8
  %71 = call i32 @ocfs2_cluster_disconnect(%struct.ocfs2_cluster_connection* %70, i32 0)
  br label %94

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %9
  %74 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %75 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %74, i32 0, i32 5
  %76 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %77 = call i32 @ocfs2_super_lock_res_init(i32* %75, %struct.ocfs2_super* %76)
  %78 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %79 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %78, i32 0, i32 4
  %80 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %81 = call i32 @ocfs2_rename_lock_res_init(i32* %79, %struct.ocfs2_super* %80)
  %82 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %83 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %82, i32 0, i32 3
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %85 = call i32 @ocfs2_nfs_sync_lock_res_init(i32* %83, %struct.ocfs2_super* %84)
  %86 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %87 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %90 = call i32 @ocfs2_orphan_scan_lock_res_init(i32* %88, %struct.ocfs2_super* %89)
  %91 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %4, align 8
  %92 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %93 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %92, i32 0, i32 1
  store %struct.ocfs2_cluster_connection* %91, %struct.ocfs2_cluster_connection** %93, align 8
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %73, %65, %56, %31, %17
  %95 = load i32, i32* %3, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %99 = call i32 @ocfs2_dlm_shutdown_debug(%struct.ocfs2_super* %98)
  %100 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %101 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %106 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @kthread_stop(i32* %107)
  br label %109

109:                                              ; preds = %104, %97
  br label %110

110:                                              ; preds = %109, %94
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @mlog_exit(i32 %111)
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_dlm_init_debug(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @kthread_run(i32, %struct.ocfs2_super*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_cluster_connect(i32, i32, i32, i32, %struct.ocfs2_super*, %struct.ocfs2_cluster_connection**) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @ocfs2_cluster_this_node(i64*) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @ocfs2_cluster_disconnect(%struct.ocfs2_cluster_connection*, i32) #1

declare dso_local i32 @ocfs2_super_lock_res_init(i32*, %struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_rename_lock_res_init(i32*, %struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_nfs_sync_lock_res_init(i32*, %struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_orphan_scan_lock_res_init(i32*, %struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_dlm_shutdown_debug(%struct.ocfs2_super*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
