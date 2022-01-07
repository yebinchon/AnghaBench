; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c___ocfs2_cluster_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c___ocfs2_cluster_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i64)* @__ocfs2_cluster_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ocfs2_cluster_unlock(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca %struct.ocfs2_lock_res*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = call i32 (...) @mlog_entry_void()
  %11 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %12 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %11, i32 0, i32 1
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ocfs2_dec_holders(%struct.ocfs2_lock_res* %15, i32 %16)
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %19 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %20 = call i32 @ocfs2_downconvert_on_unlock(%struct.ocfs2_super* %18, %struct.ocfs2_lock_res* %19)
  %21 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %22 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %21, i32 0, i32 1
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ocfs2_dec_holders(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_downconvert_on_unlock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
