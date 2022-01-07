; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_user.c_user_dlm_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_user.c_user_dlm_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cluster_connection = type { i32 }
%union.ocfs2_dlm_lksb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@DLM_LKF_NODLCKWT = common dso_local global i32 0, align 4
@fsdlm_lock_ast_wrapper = common dso_local global i32 0, align 4
@fsdlm_blocking_ast_wrapper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_cluster_connection*, i32, %union.ocfs2_dlm_lksb*, i32, i8*, i32, i8*)* @user_dlm_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_dlm_lock(%struct.ocfs2_cluster_connection* %0, i32 %1, %union.ocfs2_dlm_lksb* %2, i32 %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.ocfs2_cluster_connection*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.ocfs2_dlm_lksb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.ocfs2_cluster_connection* %0, %struct.ocfs2_cluster_connection** %8, align 8
  store i32 %1, i32* %9, align 4
  store %union.ocfs2_dlm_lksb* %2, %union.ocfs2_dlm_lksb** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %16 = load %union.ocfs2_dlm_lksb*, %union.ocfs2_dlm_lksb** %10, align 8
  %17 = bitcast %union.ocfs2_dlm_lksb* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %7
  %22 = load %union.ocfs2_dlm_lksb*, %union.ocfs2_dlm_lksb** %10, align 8
  %23 = bitcast %union.ocfs2_dlm_lksb* %22 to i8*
  %24 = getelementptr inbounds i8, i8* %23, i64 4
  %25 = load %union.ocfs2_dlm_lksb*, %union.ocfs2_dlm_lksb** %10, align 8
  %26 = bitcast %union.ocfs2_dlm_lksb* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  br label %28

28:                                               ; preds = %21, %7
  %29 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %8, align 8
  %30 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %union.ocfs2_dlm_lksb*, %union.ocfs2_dlm_lksb** %10, align 8
  %34 = bitcast %union.ocfs2_dlm_lksb* %33 to %struct.TYPE_2__*
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @DLM_LKF_NODLCKWT, align 4
  %37 = or i32 %35, %36
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @fsdlm_lock_ast_wrapper, align 4
  %41 = load i8*, i8** %14, align 8
  %42 = load i32, i32* @fsdlm_blocking_ast_wrapper, align 4
  %43 = call i32 @dlm_lock(i32 %31, i32 %32, %struct.TYPE_2__* %34, i32 %37, i8* %38, i32 %39, i32 0, i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  ret i32 %44
}

declare dso_local i32 @dlm_lock(i32, i32, %struct.TYPE_2__*, i32, i8*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
