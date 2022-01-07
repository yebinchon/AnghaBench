; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_truncate_log_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_truncate_log_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.inode*, i32, i32 }
%struct.inode = type { i32 }

@ocfs2_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_truncate_log_shutdown(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %5 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %6 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %5, i32 0, i32 0
  %7 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %7, %struct.inode** %4, align 8
  %8 = call i32 (...) @mlog_entry_void()
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = icmp ne %struct.inode* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 2
  %14 = call i32 @cancel_delayed_work(i32* %13)
  %15 = load i32, i32* @ocfs2_wq, align 4
  %16 = call i32 @flush_workqueue(i32 %15)
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %18 = call i32 @ocfs2_flush_truncate_log(%struct.ocfs2_super* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @mlog_errno(i32 %22)
  br label %24

24:                                               ; preds = %21, %11
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %26 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @brelse(i32 %27)
  %29 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %30 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %29, i32 0, i32 0
  %31 = load %struct.inode*, %struct.inode** %30, align 8
  %32 = call i32 @iput(%struct.inode* %31)
  br label %33

33:                                               ; preds = %24, %1
  %34 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @ocfs2_flush_truncate_log(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
