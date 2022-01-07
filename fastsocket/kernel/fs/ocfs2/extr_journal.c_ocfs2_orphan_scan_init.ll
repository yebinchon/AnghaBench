; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_orphan_scan_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_orphan_scan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.ocfs2_orphan_scan }
%struct.ocfs2_orphan_scan = type { i32, i32, i64, i64, %struct.ocfs2_super* }

@ocfs2_orphan_scan_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_orphan_scan_init(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.ocfs2_orphan_scan*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %4 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %4, i32 0, i32 0
  store %struct.ocfs2_orphan_scan* %5, %struct.ocfs2_orphan_scan** %3, align 8
  %6 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %7 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %7, i32 0, i32 4
  store %struct.ocfs2_super* %6, %struct.ocfs2_super** %8, align 8
  %9 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %10 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %12 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %13, i32 0, i32 1
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %17 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %16, i32 0, i32 0
  %18 = load i32, i32* @ocfs2_orphan_scan_work, align 4
  %19 = call i32 @INIT_DELAYED_WORK(i32* %17, i32 %18)
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
