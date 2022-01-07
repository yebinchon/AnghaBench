; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_queue_orphan_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_queue_orphan_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, %struct.ocfs2_orphan_scan }
%struct.ocfs2_orphan_scan = type { i64, i32, i32, i32 }

@ORPHAN_SCAN_INACTIVE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_queue_orphan_scan(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.ocfs2_orphan_scan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 2
  store %struct.ocfs2_orphan_scan* %8, %struct.ocfs2_orphan_scan** %3, align 8
  %9 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %10 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %9, i32 0, i32 3
  %11 = call i64 @atomic_read(i32* %10)
  %12 = load i64, i64* @ORPHAN_SCAN_INACTIVE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %17 = call i32 @ocfs2_orphan_scan_lock(%struct.ocfs2_super* %16, i64* %6)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @mlog_errno(i32 %26)
  br label %28

28:                                               ; preds = %25, %20
  br label %76

29:                                               ; preds = %15
  %30 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %31 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %30, i32 0, i32 3
  %32 = call i64 @atomic_read(i32* %31)
  %33 = load i64, i64* @ORPHAN_SCAN_INACTIVE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %72

36:                                               ; preds = %29
  %37 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %38 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %45 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %72

46:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %59, %46
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %50 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %55 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @ocfs2_queue_recovery_completion(i32 %56, i32 %57, i32* null, i32* null, i32* null)
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %47

62:                                               ; preds = %47
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %6, align 8
  %65 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %66 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @CURRENT_TIME, align 4
  %70 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %71 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %62, %42, %35
  %73 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @ocfs2_orphan_scan_unlock(%struct.ocfs2_super* %73, i64 %74)
  br label %76

76:                                               ; preds = %72, %28, %14
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ocfs2_orphan_scan_lock(%struct.ocfs2_super*, i64*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_queue_recovery_completion(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ocfs2_orphan_scan_unlock(%struct.ocfs2_super*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
