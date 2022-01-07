; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_o2cb.c_o2dlm_eviction_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_o2cb.c_o2dlm_eviction_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cluster_connection = type { i32, i32 (i32, i32)*, i32, i32 }

@ML_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"o2dlm has evicted node %d from group %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @o2dlm_eviction_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2dlm_eviction_cb(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocfs2_cluster_connection*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ocfs2_cluster_connection*
  store %struct.ocfs2_cluster_connection* %7, %struct.ocfs2_cluster_connection** %5, align 8
  %8 = load i32, i32* @ML_NOTICE, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %5, align 8
  %11 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %5, align 8
  %14 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @mlog(i32 %8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15)
  %17 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %5, align 8
  %18 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %17, i32 0, i32 1
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %5, align 8
  %22 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %19(i32 %20, i32 %23)
  ret void
}

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
