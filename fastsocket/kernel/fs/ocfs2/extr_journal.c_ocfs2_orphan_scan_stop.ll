; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_orphan_scan_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_orphan_scan_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.ocfs2_orphan_scan }
%struct.ocfs2_orphan_scan = type { i32, i32, i32 }

@ORPHAN_SCAN_ACTIVE = common dso_local global i64 0, align 8
@ORPHAN_SCAN_INACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_orphan_scan_stop(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.ocfs2_orphan_scan*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %4 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %4, i32 0, i32 0
  store %struct.ocfs2_orphan_scan* %5, %struct.ocfs2_orphan_scan** %3, align 8
  %6 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %6, i32 0, i32 2
  %8 = call i64 @atomic_read(i32* %7)
  %9 = load i64, i64* @ORPHAN_SCAN_ACTIVE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %12, i32 0, i32 2
  %14 = load i32, i32* @ORPHAN_SCAN_INACTIVE, align 4
  %15 = call i32 @atomic_set(i32* %13, i32 %14)
  %16 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %17 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %20 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %19, i32 0, i32 1
  %21 = call i32 @cancel_delayed_work(i32* %20)
  %22 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  br label %25

25:                                               ; preds = %11, %1
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
