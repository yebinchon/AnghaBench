; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_cluster_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_cluster_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32)* @ocfs2_cluster_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_cluster_lock(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca %struct.ocfs2_lock_res*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %12 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @_RET_IP_, align 4
  %17 = call i32 @__ocfs2_cluster_lock(%struct.ocfs2_super* %11, %struct.ocfs2_lock_res* %12, i32 %13, i32 %14, i32 %15, i32 0, i32 %16)
  ret i32 %17
}

declare dso_local i32 @__ocfs2_cluster_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
