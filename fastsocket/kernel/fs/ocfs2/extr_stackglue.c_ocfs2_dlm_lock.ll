; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stackglue.c_ocfs2_dlm_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stackglue.c_ocfs2_dlm_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ocfs2_cluster_connection*, i32, %union.ocfs2_dlm_lksb*, i32, i8*, i32, %struct.ocfs2_lock_res*)* }
%struct.ocfs2_cluster_connection = type { i32 }
%union.ocfs2_dlm_lksb = type { i32 }
%struct.ocfs2_lock_res = type { i32 }

@lproto = common dso_local global i32* null, align 8
@active_stack = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_dlm_lock(%struct.ocfs2_cluster_connection* %0, i32 %1, %union.ocfs2_dlm_lksb* %2, i32 %3, i8* %4, i32 %5, %struct.ocfs2_lock_res* %6) #0 {
  %8 = alloca %struct.ocfs2_cluster_connection*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.ocfs2_dlm_lksb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.ocfs2_cluster_connection* %0, %struct.ocfs2_cluster_connection** %8, align 8
  store i32 %1, i32* %9, align 4
  store %union.ocfs2_dlm_lksb* %2, %union.ocfs2_dlm_lksb** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.ocfs2_lock_res* %6, %struct.ocfs2_lock_res** %14, align 8
  %15 = load i32*, i32** @lproto, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @active_stack, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.ocfs2_cluster_connection*, i32, %union.ocfs2_dlm_lksb*, i32, i8*, i32, %struct.ocfs2_lock_res*)*, i32 (%struct.ocfs2_cluster_connection*, i32, %union.ocfs2_dlm_lksb*, i32, i8*, i32, %struct.ocfs2_lock_res*)** %22, align 8
  %24 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %union.ocfs2_dlm_lksb*, %union.ocfs2_dlm_lksb** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %14, align 8
  %31 = call i32 %23(%struct.ocfs2_cluster_connection* %24, i32 %25, %union.ocfs2_dlm_lksb* %26, i32 %27, i8* %28, i32 %29, %struct.ocfs2_lock_res* %30)
  ret i32 %31
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
