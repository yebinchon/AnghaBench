; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_o2cb.c_o2cb_dlm_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_o2cb.c_o2cb_dlm_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cluster_connection = type { i32 }
%union.ocfs2_dlm_lksb = type { i32 }

@o2dlm_unlock_ast_wrapper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_cluster_connection*, %union.ocfs2_dlm_lksb*, i32, i8*)* @o2cb_dlm_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2cb_dlm_unlock(%struct.ocfs2_cluster_connection* %0, %union.ocfs2_dlm_lksb* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.ocfs2_cluster_connection*, align 8
  %6 = alloca %union.ocfs2_dlm_lksb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ocfs2_cluster_connection* %0, %struct.ocfs2_cluster_connection** %5, align 8
  store %union.ocfs2_dlm_lksb* %1, %union.ocfs2_dlm_lksb** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @flags_to_o2dlm(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %5, align 8
  %15 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %union.ocfs2_dlm_lksb*, %union.ocfs2_dlm_lksb** %6, align 8
  %18 = bitcast %union.ocfs2_dlm_lksb* %17 to i32*
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @o2dlm_unlock_ast_wrapper, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @dlmunlock(i32 %16, i32* %18, i32 %19, i32 %20, i8* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @dlm_status_to_errno(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  ret i32 %25
}

declare dso_local i32 @flags_to_o2dlm(i32) #1

declare dso_local i32 @dlmunlock(i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @dlm_status_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
