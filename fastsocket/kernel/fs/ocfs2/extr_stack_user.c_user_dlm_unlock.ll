; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_user.c_user_dlm_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_user.c_user_dlm_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cluster_connection = type { i32 }
%union.ocfs2_dlm_lksb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_cluster_connection*, %union.ocfs2_dlm_lksb*, i32, i8*)* @user_dlm_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_dlm_unlock(%struct.ocfs2_cluster_connection* %0, %union.ocfs2_dlm_lksb* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.ocfs2_cluster_connection*, align 8
  %6 = alloca %union.ocfs2_dlm_lksb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ocfs2_cluster_connection* %0, %struct.ocfs2_cluster_connection** %5, align 8
  store %union.ocfs2_dlm_lksb* %1, %union.ocfs2_dlm_lksb** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %5, align 8
  %11 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %union.ocfs2_dlm_lksb*, %union.ocfs2_dlm_lksb** %6, align 8
  %14 = bitcast %union.ocfs2_dlm_lksb* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %union.ocfs2_dlm_lksb*, %union.ocfs2_dlm_lksb** %6, align 8
  %19 = bitcast %union.ocfs2_dlm_lksb* %18 to %struct.TYPE_2__*
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @dlm_unlock(i32 %12, i32 %16, i32 %17, %struct.TYPE_2__* %19, i8* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  ret i32 %22
}

declare dso_local i32 @dlm_unlock(i32, i32, i32, %struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
