; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_o2cb.c_o2cb_cluster_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_o2cb.c_o2cb_cluster_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cluster_connection = type { %struct.dlm_ctxt*, %struct.o2dlm_private* }
%struct.dlm_ctxt = type { i32 }
%struct.o2dlm_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_cluster_connection*)* @o2cb_cluster_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2cb_cluster_disconnect(%struct.ocfs2_cluster_connection* %0) #0 {
  %2 = alloca %struct.ocfs2_cluster_connection*, align 8
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.o2dlm_private*, align 8
  store %struct.ocfs2_cluster_connection* %0, %struct.ocfs2_cluster_connection** %2, align 8
  %5 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %6 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %5, i32 0, i32 0
  %7 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  store %struct.dlm_ctxt* %7, %struct.dlm_ctxt** %3, align 8
  %8 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %9 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %8, i32 0, i32 1
  %10 = load %struct.o2dlm_private*, %struct.o2dlm_private** %9, align 8
  store %struct.o2dlm_private* %10, %struct.o2dlm_private** %4, align 8
  %11 = load %struct.o2dlm_private*, %struct.o2dlm_private** %4, align 8
  %12 = getelementptr inbounds %struct.o2dlm_private, %struct.o2dlm_private* %11, i32 0, i32 0
  %13 = call i32 @dlm_unregister_eviction_cb(i32* %12)
  %14 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %15 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %14, i32 0, i32 1
  store %struct.o2dlm_private* null, %struct.o2dlm_private** %15, align 8
  %16 = load %struct.o2dlm_private*, %struct.o2dlm_private** %4, align 8
  %17 = call i32 @kfree(%struct.o2dlm_private* %16)
  %18 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %19 = call i32 @dlm_unregister_domain(%struct.dlm_ctxt* %18)
  %20 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %21 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %20, i32 0, i32 0
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %21, align 8
  ret i32 0
}

declare dso_local i32 @dlm_unregister_eviction_cb(i32*) #1

declare dso_local i32 @kfree(%struct.o2dlm_private*) #1

declare dso_local i32 @dlm_unregister_domain(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
