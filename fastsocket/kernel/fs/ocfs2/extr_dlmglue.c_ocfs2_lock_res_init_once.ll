; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_lock_res_init_once.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_lock_res_init_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_lock_res_init_once(%struct.ocfs2_lock_res* %0) #0 {
  %2 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %2, align 8
  %3 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %4 = call i32 @memset(%struct.ocfs2_lock_res* %3, i32 0, i32 16)
  %5 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %6 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %5, i32 0, i32 3
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %9 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %8, i32 0, i32 2
  %10 = call i32 @init_waitqueue_head(i32* %9)
  %11 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %12 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %11, i32 0, i32 1
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %15 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %14, i32 0, i32 0
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  ret void
}

declare dso_local i32 @memset(%struct.ocfs2_lock_res*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
