; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32*, %struct.TYPE_2__, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_dlm_shutdown(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @mlog_entry_void()
  %6 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %7 = call i32 @ocfs2_drop_osb_locks(%struct.ocfs2_super* %6)
  %8 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @kthread_stop(i32* %15)
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %18 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %17, i32 0, i32 5
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %12, %2
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %21 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %20, i32 0, i32 4
  %22 = call i32 @ocfs2_lock_res_free(i32* %21)
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %24 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %23, i32 0, i32 3
  %25 = call i32 @ocfs2_lock_res_free(i32* %24)
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %27 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %26, i32 0, i32 2
  %28 = call i32 @ocfs2_lock_res_free(i32* %27)
  %29 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %30 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @ocfs2_lock_res_free(i32* %31)
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %34 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ocfs2_cluster_disconnect(i32* %35, i32 %36)
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %39 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %41 = call i32 @ocfs2_dlm_shutdown_debug(%struct.ocfs2_super* %40)
  %42 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @ocfs2_drop_osb_locks(%struct.ocfs2_super*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @ocfs2_lock_res_free(i32*) #1

declare dso_local i32 @ocfs2_cluster_disconnect(i32*, i32) #1

declare dso_local i32 @ocfs2_dlm_shutdown_debug(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
